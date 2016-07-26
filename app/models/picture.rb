class Picture < Attachment

  include ImageUploader[:file]

  %w(original medium small mini).each do |version|
    self.class_eval <<-RUBY, __FILE__, __LINE__
      def #{version}_url
        file[:#{version}].url
      end
    RUBY
  end

  def original_filename
    file[:original].original_filename
  end

end
