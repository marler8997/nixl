#include <stdio.h>



/*
Nix Header Files:
affinity.hh            istringstream_nocopy.hh  remote-fs-accessor.hh
archive.hh             json.hh                  remote-store.hh
args.hh                json-to-value.hh         s3-binary-cache-store.hh
attr-path.hh           lazy.hh                  s3.hh
attr-set.hh            lexer-tab.hh             schema.sql.gen.hh
binary-cache-store.hh  local-store.hh           serialise.hh
builtins.hh            logging.hh               serve-protocol.hh
common-args.hh         lru-cache.hh             shared.hh
common-eval-args.hh    machines.hh              sqlite.hh
compression.hh         monitor-fd.hh            ssh.hh
config.h               names.hh                 store-api.hh
config.hh              nar-accessor.hh          symbol-table.hh
crypto.hh              nar-info-disk-cache.hh   sync.hh
derivations.hh         nar-info.hh              thread-pool.hh
download.hh            nixexpr.hh               types.hh
eval.hh                parser-tab.hh            util.hh
eval-inline.hh         pathlocks.hh             value.hh
finally.hh             pool.hh                  value-to-json.hh
fs-accessor.hh         primops.hh               value-to-xml.hh
get-drvs.hh            profiles.hh              worker-protocol.hh
globals.hh             references.hh            xml-writer.hh
hash.hh                ref.hh
*/
int main(int argc, char *argv[], char *env[])
{
  printf("Nixl!\n");
  for (int i = 0; i < argc; i++) {
    printf("argv[%d] = '%s'\n", i, argv);
  }
  for (int i = 0; env[i] ; i++) {
    printf("%s\n", env[i]);
  }
  return 0;
}
