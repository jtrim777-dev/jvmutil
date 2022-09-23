load("@bazeldist//brew:rules.bzl", "deploy_brew")
load("@bazeldist//artifact:rules.bzl", "deploy_artifact")
load("@rules_pkg//:pkg.bzl", "pkg_tar")
load("//tools:hash.bzl", "hashes")

pkg_tar(
    name = "jvmutil-pkg",
    deps = [
      "//package:bin-tar",
      "//package:share-tar"
    ],
    extension = "tgz",
)

hashes(
  name = "jvmutil-pkg_hash",
  src = ":jvmutil-pkg.tgz",
)

deploy_artifact(
  name = "deploy-pkg",
  target = ":jvmutil-pkg.tgz",
  version_file = "//:VERSION",
  artifact_group = "dev.jtrim777.jvmutil",
  artifact_name = "jvmutil-pkg.tgz",
  release = "https://maven.jtrim777.dev/releases",
  snapshot = "https://maven.jtrim777.dev/snapshots",
  visibility = ["//visibility:private"]
)

deploy_brew(
    name = "deploy-formula",
    checksum = ":jvmutil-pkg_hash.sha256",
    formula = "//:jvmutil.rb",
    release = "https://github.com/jtrim777-dev/homebrew-tap.git",
    snapshot = "https://github.com/jtrim777-dev/homebrew-tap.git",
    version_file = "//:VERSION",
)
