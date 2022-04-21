FROM perl:5.34.1

WORKDIR /tmp
COPY . /tmp

RUN cpan Crypt::RC4 Digest::CRC Digest::MD5 Crypt::Blowfish Archive::Zip Compress::Raw::Zlib MIME::Base64 OLE::Storage_Lite

ENTRYPOINT ["perl", "/tmp/DeXRAY.pl", "/tmp"]

