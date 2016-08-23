cxx_plugin do |ruby_dsl, building_blocks, log|

  def format_sources(bbs)
    return bbs.inject(0) do |memo, bb|
      memo += bb.sources.size if bb.kind_of?(Cxxproject::HasSources)
      memo
    end
  end

  desc 'print building block stats'
  task :clang_format do
    puts "clang_format"
    building_blocks.each do |pair|
      name = pair[0]
      bb = pair[1]
      puts name.class
      puts bb.class
      if bb.kind_of?(Cxxproject::HasSources)
        bb.sources.each do |source|
          f = File.join(bb.project_dir, source)
          sh "clang-format -i #{f}"
        end
      end
    end
  end
end
