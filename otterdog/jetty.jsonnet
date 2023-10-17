local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('jetty') {
  settings+: {
    billing_email: "wayne.beaton@eclipse-foundation.org",
    blog: "https://eclipse.dev/jetty",
    default_repository_permission: "none",
    dependabot_alerts_enabled_for_new_repositories: false,
    dependabot_security_updates_enabled_for_new_repositories: false,
    dependency_graph_enabled_for_new_repositories: false,
    description: "The Eclipse Jetty Project",
    email: "jetty-dev@eclipse.org",
    name: "Eclipse Jetty",
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    security_managers+: [
      "rt-jetty-committers"
    ],
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Contents and release generation for display on https://eclipse.dev/jetty",
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty.alpn.api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® ALPN API - See https://github.com/jetty-project/jetty-alpn for the implementation",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "http://www.eclipse.org/jetty",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty.docker') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "jetty docker",
      has_wiki: false,
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty.parent') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Eclipse Jetty® - Servlet Engine and Http Server project repository (jetty.parent)",
      has_issues: false,
      homepage: "http://www.eclipse.org/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty.project') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "jetty-10.0.x",
      delete_branch_on_merge: false,
      description: "Eclipse Jetty® - Web Container & Clients - supports HTTP/2, HTTP/1.1, HTTP/1.0, websocket, servlets, and more",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      topics+: [
        "eclipse",
        "embedded",
        "fcgi",
        "http",
        "http-client",
        "http-server",
        "http2",
        "http2-push",
        "http3",
        "https",
        "jakartaee",
        "java",
        "jetty",
        "jsp",
        "osgi",
        "servlet",
        "ssl",
        "tls",
        "unix-socket",
        "websockets"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
      # branch protection rules have been converted to a repository ruleset
      # in order to support required status checks with a bypass list.
    },
    orgs.newRepo('jetty.toolchain') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Servlet Engine and Http Server project repository (jetty.toolchain)",
      homepage: "http://www.eclipse.org/jetty",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://jenkins.webtide.net/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('jetty.website') {
      archived: true,
      default_branch: "master",
      web_commit_signoff_required: false,
    },
  ],
}
