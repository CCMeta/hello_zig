#include "test.h"

int main(int argc, char **argv)
{
  FILE *fp = popen("pwd", "r");
  int i = 0;
  char *result = (char *)calloc(1, sizeof(char));
  while (!feof(fp))
  {
    fread(result, 1, 64, fp);
    printf("%s", result);
  }
  return 0;
}