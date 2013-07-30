json.array!(@proofs) do |proof|
  json.extract! proof, :videoid, :name, :age, :desc, :cate
  json.url proof_url(proof, format: :json)
end
