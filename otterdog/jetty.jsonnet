local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('rt.jetty', 'jetty') {
  settings+: {
    blog: "https://jetty.org",
    description: "The Eclipse Jetty Project",
    email: "jetty-dev@eclipse.org",
    name: "Eclipse Jetty",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  teams+: [
    orgs.newTeam('rt-jetty-pmc') {
      members+: [
        "gregw",
        "janbartel",
        "jmcc0nn3ll",
        "joakime",
        "sbordet"
      ],
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-alpn-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® ALPN API - See https://github.com/jetty-project/jetty-alpn for the implementation",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
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
    orgs.newRepo('jetty-artifact-remote-resources') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Artifact Resources",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-assembly-descriptors') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Maven Assembly Descriptors",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-build-support') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Build Support",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-examples') {
      allow_merge_commit: true,
      default_branch: "12.0.x",
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Examples",
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-parent') {
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Parent Pom",
      has_wiki: false,
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
    orgs.newRepo('jetty-perf-helper') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Performance Tool Helper",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-schemas') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - General Schemas Jar",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-servlet-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "jakarta-servlet-api",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Servlet API (javax and jakarta)",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      topics+: [
        "eclipse",
        "jakartaee",
        "jetty",
        "servlet"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-setuid-jna') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - SetUID Module",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-test-helper') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Test Helper",
      has_wiki: false,
      homepage: "https://jetty.org/",
      topics+: [
        "eclipse",
        "jetty",
        "junit",
        "testing"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-test-policy') {
      archived: true,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Test Policy",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-toolchain') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - Servlet Engine and Http Server project repository (jetty.toolchain)",
      has_wiki: false,
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
    orgs.newRepo('jetty-website') {
      archived: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Old jetty website for https://eclipse.dev/jetty",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-website-2020') {
      archived: true,
      default_branch: "master",
      description: "Old Jetty Website",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-websocket-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "jakarta-websocket-api",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - WebSocket API (javax and jakarta)",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      topics+: [
        "eclipse",
        "jakartaee",
        "jetty",
        "websocket"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty-xhtml-schemas') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Jetty® - XHTML Schemas Jar",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('jetty.docker') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "jetty docker",
      has_wiki: false,
      homepage: "https://eclipse.dev/jetty",
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
    orgs.newRepo('jetty.project') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "jetty-12.0.x",
      delete_branch_on_merge: false,
      description: "Eclipse Jetty® - Web Container & Clients - supports HTTP/2, HTTP/1.1, HTTP/1.0, websocket, servlets, and more",
      has_discussions: true,
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
      rulesets: [
        orgs.newRepoRuleset('protect-mainline-branches') {
          allows_creations: true,
          bypass_actors+: [
            "@jetty/rt-jetty-pmc"
          ],
          include_refs+: [
            "refs/heads/jetty-10.0.x",
            "refs/heads/jetty-12.0.x",
            "refs/heads/jetty-9.4.x"
          ],
          required_pull_request+: {
            required_approving_review_count: 1,
            dismisses_stale_reviews: true,
          },
          required_status_checks+: {
            status_checks+: [
              "continuous-integration/jenkins/pr-merge"
            ],
          },
        },
      ],
    },
    orgs.newRepo('jetty.website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "workflow",
      web_commit_signoff_required: false,
      description: "Antora-based jetty.org website.",
      homepage: "https://jetty.org",
      secrets: [
        orgs.newRepoSecret('RELEASE_TOKEN') {
          value: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
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
  ],
}
