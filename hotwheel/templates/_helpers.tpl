{{/*
Expand the name of the chart.
*/}}
{{- define "hotwheel.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "hotwheel.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "hotwheel.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "hotwheel.backend.fullname" -}}
{{ template "hotwheel.fullname" . }}-backend
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "hotwheel.ui.fullname" -}}
{{ template "hotwheel.fullname" . }}-ui
{{- end }}

{{/*
Common labels
*/}}
{{- define "hotwheel.labels" -}}
helm.sh/chart: {{ include "hotwheel.chart" . }}
{{ include "hotwheel.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "hotwheel.selectorLabels" -}}
app.kubernetes.io/name: {{ include "hotwheel.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "hotwheel.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "hotwheel.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
检查必填参数是否已设置
*/}}
{{- if not .Values.config.database_url -}}
    {{- printf "必填参数 'config.database_url' 未设置" -}}
{{- end -}}
{{- if not .Values.config.database_username -}}
    {{- printf "必填参数 'config.database_username' 未设置" -}}
{{- end -}}
{{- if not .Values.config.database_password -}}
    {{- printf "必填参数 'config.database_password' 未设置" -}}
{{- end -}}

{{- if not .Values.config.app_backend_url -}}
    {{- printf "必填参数 'config.app_backend_url' 未设置" -}}
{{- end -}}
{{- if not .Values.config.app_ui_url -}}
    {{- printf "必填参数 'config.app_ui_url' 未设置" -}}
{{- end -}}