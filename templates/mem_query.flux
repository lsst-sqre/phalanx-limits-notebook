from(bucket: "{bucket}")
  |> range(start: -{duration})
  |> filter(fn: (r) => r["_measurement"] == "kubernetes_pod_container")
  |> filter(fn: (r) => r["_field"] == "memory_usage_bytes")
  |> drop(columns: ["_measurement", "_field", "_start", "_stop", "host", "node_name", "namespace"])
