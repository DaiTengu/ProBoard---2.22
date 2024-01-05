#include <stdio.h>
#include <iostream.h>
#include <string.h>
#include <errno.h>

struct map_entry {
  char key[41];
  char value[41];
};

struct map_entry map_entries[20];

static void trim(char* s) {
  size_t len = strlen(s);
  while (len > 0 && s[len - 1] <= 32 && s[len - 1] > 0) {
    --len;
  }
  s[len] = '\0';
}

int parse_mapfile(FILE* f, struct map_entry* entries, int max_entries) {
  int cur = 0;
  char s[255];
  while (fgets(s, 255, f) != NULL) {
    fprintf(stderr, "LOG: read line: [%s]\r\n", s);
    char* eq = strchr(s, '=');
    if (!eq) { continue;  }
    *eq++ = 0;
    trim(s);
    trim(eq);
    fprintf(stderr, "LOG: eq: [%s/%d]\r\n", eq, *eq);
    while (*eq == ' ') { 
      fprintf(stderr, "LOG: skipping eq: [%c]\r\n", *eq);
      eq++;
    }
    fprintf(stderr, "LOG: adding key: [%s]; cur %d\r\n", s, cur);
    fprintf(stderr, "LOG: adding value: [%s]; cur %d\r\n", eq, cur);
    strcpy(entries[cur].key, s);
    strcpy(entries[cur].value, eq);
    ++cur;
    if (cur >= max_entries) {
      break;
    }
  }
  fclose(f);
  return cur;
}

int main(int argc, char* argv[]) {
  if (argc != 4) {
    fprintf(stderr, "expected 3 args, got %d\r\n", argc);
    fprintf(stderr, "Usage:   configur <map file> <input file> <output file>\r\n\n"
      "Example: configur version.mk version.h.in version.h\r\n");
    return 1;
  }

  memset(map_entries, 0, sizeof(map_entries));
  FILE* mapf = fopen(argv[1], "rt");
  if (!mapf) {
    fprintf(stderr, "Unable to open map file: [%s]\r\n", argv[1]);
    return 2;
  }

  FILE* in = fopen(argv[2], "rt");
  if (!in) {
    fprintf(stderr, "Unable to open in file: [%s]; errno: [%d]\r\n", argv[2], errno);
    return 2;
  }

  FILE* out = fopen(argv[3], "wt");
  if (!out) {
    fprintf(stderr, "Unable to open out file: [%s]\r\n", argv[3]);
    return 2;
  }

  if (!parse_mapfile(mapf, map_entries, 20)) {
    fprintf(stderr, "Unable to parse map file: [%s]\r\n", argv[1]);
    return 2;
  }

  int in_key = 0;
  char key[41];
  memset(key, 0, sizeof(key));
  char* pkey = key;
  for (;;) {
    int c = fgetc(in);
    if (c == EOF) {
      break;
    }
    if (c == '@' && !in_key) {
      in_key = 1;
    }
    else if (c == '@' && in_key) {
      // handle key
      in_key = 0;
      int handled = 0;
      for (struct map_entry* e = map_entries; e != NULL; e++) {
        if (stricmp(e->key, key) == 0) {
          // we have the right key
          fputs(e->value, out);
          handled = 1;
          break;
        }
      }
      if (!handled) {
        // we didn't handle the key
        fprintf(stderr, "Unable to find value for key [%s]\r\n", key);
      }
      memset(key, 0, sizeof(key));
      pkey = key;
    }
    else if (in_key) {
      *pkey++ = c & 0xff;
    }
    else {
      fputc(c, out);
    }
  } 
  return 0;
}