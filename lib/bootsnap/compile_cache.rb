module Bootsnap
  module CompileCache
    def self.setup(cache_dir: 'tmp/cache', iseq: true, yaml: true)
      if iseq
        require_relative 'compile_cache/iseq'
        Bootsnap::CompileCache::ISeq.install!(cache_dir)
      end

      if yaml
        require_relative 'compile_cache/yaml'
        Bootsnap::CompileCache::YAML.install!(cache_dir)
      end
    end
  end
end
