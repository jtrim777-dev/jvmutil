load("@rules_pkg//:pkg.bzl", "pkg_tar")

pkg_tar(
    name = "bin-tar",
    visibility = ["//:__pkg__"],
    srcs = glob(["bin/*"]),
    mode = "0755",
    package_dir = "/bin",
)

pkg_tar(
    name = "manpage-tar",
    srcs = ["man/jvmutil.man"],
    mode = "0444",
    extension = "1.gz",
    strip_prefix = "/man",
    package_dir = "/"
)

pkg_tar(
    name = "share-tar",
    visibility = ["//:__pkg__"],
    srcs = [":manpage-tar.1.gz"],
    package_dir = "/share/man/man1"
)
