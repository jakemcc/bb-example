workspace(
    name="scala_example"
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# skylib_version = "1.0.3"
# http_archive(
#     name = "bazel_skylib",
#     sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
#     type = "tar.gz",
#     url = "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib-{}.tar.gz".format(skylib_version, skylib_version),
# )

# rules_scala_version = "5df8033f752be64fbe2cedfd1bdbad56e2033b15"

# http_archive(
#     name = "io_bazel_rules_scala",
#     sha256 = "b7fa29db72408a972e6b6685d1bc17465b3108b620cb56d9b1700cf6f70f624a",
#     strip_prefix = "rules_scala-%s" % rules_scala_version,
#     type = "zip",
#     url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip" % rules_scala_version,
# )

# load("@io_bazel_rules_scala//:scala_config.bzl", "scala_config")
# scala_config()

# load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
# scala_repositories()

# load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")
# scala_register_toolchains()

# # optional: setup ScalaTest toolchain and dependencies
# load("@io_bazel_rules_scala//testing:scalatest.bzl", "scalatest_repositories", "scalatest_toolchain")
# scalatest_repositories()
# scalatest_toolchain()

http_archive(
    name = "io_buildbuddy_buildbuddy_toolchain",
    sha256 = "a2a5cccec251211e2221b1587af2ce43c36d32a42f5d881737db3b546a536510",
    strip_prefix = "buildbuddy-toolchain-829c8a574f706de5c96c54ca310f139f4acda7dd",
    urls = ["https://github.com/buildbuddy-io/buildbuddy-toolchain/archive/829c8a574f706de5c96c54ca310f139f4acda7dd.tar.gz"],
)

load("@io_buildbuddy_buildbuddy_toolchain//:deps.bzl", "buildbuddy_deps")

buildbuddy_deps()

load("@io_buildbuddy_buildbuddy_toolchain//:rules.bzl", "buildbuddy")

buildbuddy(name = "buildbuddy_toolchain")
