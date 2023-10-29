local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('jetty') {
  settings+: {
    blog: "https://eclipse.dev/jetty",
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
  webhooks+: [
    orgs.newOrgWebhook('https://jenkins.webtide.net/github-webhook/') {
      content_type: "json",
      events+: [
        "pull_request",
        "push"
      ],
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Contents and release generation for display on https://eclipse.dev/jetty",
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
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
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
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
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.parent') {
      archived: true,
      description: "Eclipse Jetty® - Archived Repository",
      has_issues: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
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
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
      rulesets: [
        orgs.newRepoRuleset('protect-mainline-branches') {
          allows_creations: true,
          allows_updates: true,
          bypass_actors+: [
            "@jetty/rt-jetty-pmc"
          ],
          include_refs+: [
            "refs/heads/jetty-10.0.x",
            "refs/heads/jetty-12.0.x",
            "refs/heads/jetty-9.4.x"
          ],
          required_approving_review_count: 1,
          required_status_checks+: [
            "continuous-integration/jenkins/pr-merge"
          ],
          requires_commit_signatures: false,
          requires_last_push_approval: false,
          requires_review_thread_resolution: false,
        },
      ],
    },
    orgs.newRepo('jetty.setuid') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - SetUID Module",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.test.helper') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Test Helper",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
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
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Under Construction",
      homepage: "http://jetty.org",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.schemas') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - General Schemas Jar",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.schemas.xhtml') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - XHTML Schemas Jar",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.test.policy') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Test Policy",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.servlet.api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Servlet API (javax and jakarta)",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.websocket.api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - WebSocket API (javax and jakarta)",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('jetty.build.support') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Build Support",
      homepage: "http://eclipse.org/jetty",
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
  ],
}
