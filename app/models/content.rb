class Content < ApplicationRecord
  has_many_attached :media
  validates :media, presence: true

  before_create :upload_to_cloudinary



  private

  def upload_to_cloudinary
    media.each do |file|
      response = Cloudinary::Uploader.upload(file.blob.service.send(:object_for, file.key).download)
      media_urls << response['secure_url']
      # public_ids << response['public_id']
    end
  end

end
