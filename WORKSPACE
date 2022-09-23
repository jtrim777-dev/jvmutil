# WORKSPACE
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kotlin_repositories", "kt_register_toolchains")
kotlin_repositories()
kt_register_toolchains()

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-3.2",
    sha256 = "82262ff4223c5fda6fb7ff8bd63db8131b51b413d26eb49e3131037e79e324af",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/3.2.zip",
)

http_archive(
    name = "bazeldist",
    url = "https://maven.jtrim777.dev/releases/dev/jtrim777/bazeldist/0.1.1/bazeldist-all.tar.gz",
    sha256 = "4ccc933d94c7b83b9fc89694c1f87f635b9f9d4b0f2661e9baca688a7b8b8dc9",
)

load("@bazeldist//maven:deps.bzl", "maven_artifacts_with_versions")
load("@rules_jvm_external//:defs.bzl", "maven_install")
maven_install(
    artifacts = maven_artifacts_with_versions,
    repositories = [
        "https://repo1.maven.org/maven2",
    ],
    strict_visibility = True,
    version_conflict_policy = "pinned",
    fetch_sources = True,
)

http_archive(
    name = "rules_pkg",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
        "https://github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
    ],
    sha256 = "038f1caa773a7e35b3663865ffb003169c6a71dc995e39bf4815792f385d837d",
    patches = [
        "@bazeldist//:bazelbuild_rules_pkg-allow-long-filenames.patch",
    ],
    patch_args = ["-p1"],
)

load("@bazeldist//common:rules.bzl", "workspace_refs")
workspace_refs(
    name = "repo_workspace_refs"
)
