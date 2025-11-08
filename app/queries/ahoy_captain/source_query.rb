module AhoyCaptain
  class SourceQuery < ApplicationQuery
    def build
      expr = AhoyCaptain::DatabaseAdapter.domain_from("referring_domain")
      visit_query.select("#{expr} as referring_domain, count(#{expr}) as count, sum(count(#{expr})) OVER() as total_count")
                 .where.not(referring_domain: nil)
                 .group(expr)
                 .order(Arel.sql "count(#{expr}) desc")
    end
  end
end
