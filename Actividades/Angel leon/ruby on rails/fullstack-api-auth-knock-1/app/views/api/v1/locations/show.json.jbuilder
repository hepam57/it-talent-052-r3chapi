json.id @location.id
json.name @location.name
json.curren do
  json.temp @location.recordings.last.temp
  json.status @location.recordings.last.status
end
json.current @location.recordings, :temp, :status