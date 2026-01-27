{ pkgs, ... }: {
  channel = "stable-24.05";
  packages = [ pkgs.busybox ];
  idx = {
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["busybox" "httpd" "-f" "-p" "$PORT"];
          manager = "web";
        };
      };
    };
  };
}
