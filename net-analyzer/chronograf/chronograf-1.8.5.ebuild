# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module systemd
COMMIT=6b7e6cb1a

DESCRIPTION="Monitoring, processing and alerting on time series data"
HOMEPAGE="https://www.influxdata.com"

EGO_SUM=(
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"cloud.google.com/go v0.38.0/go.mod"
	"cloud.google.com/go v0.43.0"
	"cloud.google.com/go v0.43.0/go.mod"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/DATA-DOG/go-sqlmock v1.3.3"
	"github.com/DATA-DOG/go-sqlmock v1.3.3/go.mod"
	"github.com/DataDog/zstd v1.4.0"
	"github.com/DataDog/zstd v1.4.0/go.mod"
	"github.com/NYTimes/gziphandler v1.1.1"
	"github.com/NYTimes/gziphandler v1.1.1/go.mod"
	"github.com/OneOfOne/xxhash v1.2.2"
	"github.com/OneOfOne/xxhash v1.2.2/go.mod"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
	"github.com/andreyvit/diff v0.0.0-20170406064948-c7f18ee00883"
	"github.com/andreyvit/diff v0.0.0-20170406064948-c7f18ee00883/go.mod"
	"github.com/antihax/optional v0.0.0-20180407024304-ca021399b1a6/go.mod"
	"github.com/apache/arrow/go/arrow v0.0.0-20191024131854-af6fa24be0db"
	"github.com/apache/arrow/go/arrow v0.0.0-20191024131854-af6fa24be0db/go.mod"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
	"github.com/beorn7/perks v1.0.0"
	"github.com/beorn7/perks v1.0.0/go.mod"
	"github.com/boltdb/bolt v1.3.1"
	"github.com/boltdb/bolt v1.3.1/go.mod"
	"github.com/bouk/httprouter v0.0.0-20160817010721-ee8b3818a7f5"
	"github.com/bouk/httprouter v0.0.0-20160817010721-ee8b3818a7f5/go.mod"
	"github.com/c-bata/go-prompt v0.2.2/go.mod"
	"github.com/cespare/xxhash v1.1.0"
	"github.com/cespare/xxhash v1.1.0/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/coreos/bbolt v1.3.3"
	"github.com/coreos/bbolt v1.3.3/go.mod"
	"github.com/coreos/etcd v3.3.18+incompatible"
	"github.com/coreos/etcd v3.3.18+incompatible/go.mod"
	"github.com/coreos/go-semver v0.3.0"
	"github.com/coreos/go-semver v0.3.0/go.mod"
	"github.com/coreos/go-systemd/v22 v22.0.0"
	"github.com/coreos/go-systemd/v22 v22.0.0/go.mod"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f/go.mod"
	"github.com/dave/jennifer v1.2.0/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
	"github.com/dustin/go-humanize v1.0.0"
	"github.com/dustin/go-humanize v1.0.0/go.mod"
	"github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21"
	"github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21/go.mod"
	"github.com/eclipse/paho.mqtt.golang v1.2.0"
	"github.com/eclipse/paho.mqtt.golang v1.2.0/go.mod"
	"github.com/elazarl/go-bindata-assetfs v1.0.0"
	"github.com/elazarl/go-bindata-assetfs v1.0.0/go.mod"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/go-kit/kit v0.8.0/go.mod"
	"github.com/go-logfmt/logfmt v0.3.0/go.mod"
	"github.com/go-logfmt/logfmt v0.4.0/go.mod"
	"github.com/go-sql-driver/mysql v1.4.1"
	"github.com/go-sql-driver/mysql v1.4.1/go.mod"
	"github.com/go-stack/stack v1.8.0/go.mod"
	"github.com/godbus/dbus/v5 v5.0.3/go.mod"
	"github.com/gogo/protobuf v1.1.1"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/gogo/protobuf v1.2.1/go.mod"
	"github.com/gogo/protobuf v1.3.1"
	"github.com/gogo/protobuf v1.3.1/go.mod"
	"github.com/golang/geo v0.0.0-20190916061304-5b978397cfec"
	"github.com/golang/geo v0.0.0-20190916061304-5b978397cfec/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20191227052852-215e87163ea7"
	"github.com/golang/groupcache v0.0.0-20191227052852-215e87163ea7/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.2.0/go.mod"
	"github.com/golang/mock v1.3.1/go.mod"
	"github.com/golang/protobuf v1.2.0"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.3.3"
	"github.com/golang/protobuf v1.3.3/go.mod"
	"github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db"
	"github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db/go.mod"
	"github.com/golang/snappy v0.0.1"
	"github.com/golang/snappy v0.0.1/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/btree v1.0.0"
	"github.com/google/btree v1.0.0/go.mod"
	"github.com/google/flatbuffers v1.11.0"
	"github.com/google/flatbuffers v1.11.0/go.mod"
	"github.com/google/go-cmp v0.2.0"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-github v17.0.0+incompatible"
	"github.com/google/go-github v17.0.0+incompatible/go.mod"
	"github.com/google/go-querystring v1.0.0"
	"github.com/google/go-querystring v1.0.0/go.mod"
	"github.com/google/martian v2.1.0+incompatible/go.mod"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f/go.mod"
	"github.com/google/renameio v0.1.0/go.mod"
	"github.com/google/uuid v1.1.1"
	"github.com/google/uuid v1.1.1/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.5"
	"github.com/googleapis/gax-go/v2 v2.0.5/go.mod"
	"github.com/gorilla/websocket v1.4.1"
	"github.com/gorilla/websocket v1.4.1/go.mod"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.1.0"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.1.0/go.mod"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0/go.mod"
	"github.com/grpc-ecosystem/grpc-gateway v1.12.1"
	"github.com/grpc-ecosystem/grpc-gateway v1.12.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.0"
	"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
	"github.com/influxdata/flux v0.65.0"
	"github.com/influxdata/flux v0.65.0/go.mod"
	"github.com/influxdata/influxdb v1.1.5"
	"github.com/influxdata/influxdb v1.1.5/go.mod"
	"github.com/influxdata/kapacitor v1.5.3"
	"github.com/influxdata/kapacitor v1.5.3/go.mod"
	"github.com/influxdata/line-protocol v0.0.0-20180522152040-32c6aa80de5e"
	"github.com/influxdata/line-protocol v0.0.0-20180522152040-32c6aa80de5e/go.mod"
	"github.com/influxdata/promql/v2 v2.12.0/go.mod"
	"github.com/influxdata/tdigest v0.0.0-20181121200506-bf2b5ad3c0a9"
	"github.com/influxdata/tdigest v0.0.0-20181121200506-bf2b5ad3c0a9/go.mod"
	"github.com/influxdata/usage-client v0.0.0-20160829180054-6d3895376368"
	"github.com/influxdata/usage-client v0.0.0-20160829180054-6d3895376368/go.mod"
	"github.com/jessevdk/go-flags v1.4.0"
	"github.com/jessevdk/go-flags v1.4.0/go.mod"
	"github.com/jonboulle/clockwork v0.1.0"
	"github.com/jonboulle/clockwork v0.1.0/go.mod"
	"github.com/json-iterator/go v1.1.6"
	"github.com/json-iterator/go v1.1.6/go.mod"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
	"github.com/julienschmidt/httprouter v1.2.0/go.mod"
	"github.com/kevinburke/go-bindata v3.21.0+incompatible"
	"github.com/kevinburke/go-bindata v3.21.0+incompatible/go.mod"
	"github.com/kisielk/errcheck v1.1.0/go.mod"
	"github.com/kisielk/errcheck v1.2.0/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.3"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.3/go.mod"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/lestrrat-go/jwx v0.9.0"
	"github.com/lestrrat-go/jwx v0.9.0/go.mod"
	"github.com/lib/pq v1.0.0"
	"github.com/lib/pq v1.0.0/go.mod"
	"github.com/mattn/go-colorable v0.0.9"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-isatty v0.0.4"
	"github.com/mattn/go-isatty v0.0.4/go.mod"
	"github.com/mattn/go-runewidth v0.0.3/go.mod"
	"github.com/mattn/go-sqlite3 v1.11.0"
	"github.com/mattn/go-sqlite3 v1.11.0/go.mod"
	"github.com/mattn/go-tty v0.0.0-20180907095812-13ff1204f104/go.mod"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
	"github.com/microcosm-cc/bluemonday v1.0.2"
	"github.com/microcosm-cc/bluemonday v1.0.2/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v1.0.1"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
	"github.com/opentracing/opentracing-go v1.0.2"
	"github.com/opentracing/opentracing-go v1.0.2/go.mod"
	"github.com/opentracing/opentracing-go v1.1.0"
	"github.com/opentracing/opentracing-go v1.1.0/go.mod"
	"github.com/pierrec/lz4 v2.0.5+incompatible"
	"github.com/pierrec/lz4 v2.0.5+incompatible/go.mod"
	"github.com/pkg/errors v0.8.0"
	"github.com/pkg/errors v0.8.0/go.mod"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pkg/term v0.0.0-20180730021639-bffc007b7fd5/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/prometheus/client_golang v0.9.1/go.mod"
	"github.com/prometheus/client_golang v1.0.0"
	"github.com/prometheus/client_golang v1.0.0/go.mod"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod"
	"github.com/prometheus/common v0.4.1/go.mod"
	"github.com/prometheus/common v0.6.0"
	"github.com/prometheus/common v0.6.0/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
	"github.com/prometheus/procfs v0.0.2"
	"github.com/prometheus/procfs v0.0.2/go.mod"
	"github.com/rogpeppe/fastuuid v1.2.0/go.mod"
	"github.com/rogpeppe/go-internal v1.3.0/go.mod"
	"github.com/satori/go.uuid v1.2.1-0.20181028125025-b2ce2384e17b"
	"github.com/satori/go.uuid v1.2.1-0.20181028125025-b2ce2384e17b/go.mod"
	"github.com/segmentio/kafka-go v0.1.0/go.mod"
	"github.com/segmentio/kafka-go v0.3.4"
	"github.com/segmentio/kafka-go v0.3.4/go.mod"
	"github.com/sergi/go-diff v1.0.0"
	"github.com/sergi/go-diff v1.0.0/go.mod"
	"github.com/sergi/go-diff v1.1.0"
	"github.com/sergi/go-diff v1.1.0/go.mod"
	"github.com/sirupsen/logrus v1.2.0"
	"github.com/sirupsen/logrus v1.2.0/go.mod"
	"github.com/sirupsen/logrus v1.4.2"
	"github.com/sirupsen/logrus v1.4.2/go.mod"
	"github.com/sirupsen/logrus v1.6.0"
	"github.com/sirupsen/logrus v1.6.0/go.mod"
	"github.com/soheilhy/cmux v0.1.4"
	"github.com/soheilhy/cmux v0.1.4/go.mod"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72/go.mod"
	"github.com/spf13/cobra v0.0.3"
	"github.com/spf13/cobra v0.0.3/go.mod"
	"github.com/spf13/pflag v1.0.3"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v1.2.0/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5/go.mod"
	"github.com/xdg/scram v0.0.0-20180814205039-7eeb5667e42c"
	"github.com/xdg/scram v0.0.0-20180814205039-7eeb5667e42c/go.mod"
	"github.com/xdg/stringprep v1.0.0"
	"github.com/xdg/stringprep v1.0.0/go.mod"
	"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2"
	"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2/go.mod"
	"go.etcd.io/bbolt v1.3.3"
	"go.etcd.io/bbolt v1.3.3/go.mod"
	"go.opencensus.io v0.21.0/go.mod"
	"go.opencensus.io v0.22.0"
	"go.opencensus.io v0.22.0/go.mod"
	"go.uber.org/atomic v1.3.2"
	"go.uber.org/atomic v1.3.2/go.mod"
	"go.uber.org/atomic v1.4.0/go.mod"
	"go.uber.org/atomic v1.5.0/go.mod"
	"go.uber.org/atomic v1.5.1"
	"go.uber.org/atomic v1.5.1/go.mod"
	"go.uber.org/multierr v1.1.0"
	"go.uber.org/multierr v1.1.0/go.mod"
	"go.uber.org/multierr v1.3.0/go.mod"
	"go.uber.org/multierr v1.4.0"
	"go.uber.org/multierr v1.4.0/go.mod"
	"go.uber.org/tools v0.0.0-20190618225709-2cfd321de3ee"
	"go.uber.org/tools v0.0.0-20190618225709-2cfd321de3ee/go.mod"
	"go.uber.org/zap v1.9.1"
	"go.uber.org/zap v1.9.1/go.mod"
	"go.uber.org/zap v1.10.0/go.mod"
	"go.uber.org/zap v1.13.0"
	"go.uber.org/zap v1.13.0/go.mod"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190506204251-e1dfcc566284/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20191227163750-53104e6ec876"
	"golang.org/x/crypto v0.0.0-20191227163750-53104e6ec876/go.mod"
	"golang.org/x/exp v0.0.0-20180321215751-8460e604b9de/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de/go.mod"
	"golang.org/x/lint v0.0.0-20191125180803-fdd1cda4f05f"
	"golang.org/x/lint v0.0.0-20191125180803-fdd1cda4f05f/go.mod"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
	"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
	"golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
	"golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
	"golang.org/x/net v0.0.0-20190613194153-d28f0bde5980/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20191002035440-2ec189313ef0/go.mod"
	"golang.org/x/net v0.0.0-20191209160850-c0dbc17a3553"
	"golang.org/x/net v0.0.0-20191209160850-c0dbc17a3553/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c/go.mod"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0/go.mod"
	"golang.org/x/sys v0.0.0-20200107162124-548cf772de50"
	"golang.org/x/sys v0.0.0-20200107162124-548cf772de50/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
	"golang.org/x/text v0.3.2"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod"
	"golang.org/x/tools v0.0.0-20180525024113-a5b4c53f6e8b/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20181030221726-6c7e314b6563/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
	"golang.org/x/tools v0.0.0-20190425150028-36563e24a262/go.mod"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b/go.mod"
	"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0/go.mod"
	"golang.org/x/tools v0.0.0-20191029041327-9cc4af7d6b2c/go.mod"
	"golang.org/x/tools v0.0.0-20191029190741-b9c20aec41a5/go.mod"
	"golang.org/x/tools v0.0.0-20191125144606-a911d9008d1f/go.mod"
	"golang.org/x/tools v0.0.0-20200107050322-53017a39ae36"
	"golang.org/x/tools v0.0.0-20200107050322-53017a39ae36/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"gonum.org/v1/gonum v0.0.0-20181121035319-3f7ecaa7e8ca"
	"gonum.org/v1/gonum v0.0.0-20181121035319-3f7ecaa7e8ca/go.mod"
	"gonum.org/v1/netlib v0.0.0-20181029234149-ec6d1f5cefe6"
	"gonum.org/v1/netlib v0.0.0-20181029234149-ec6d1f5cefe6/go.mod"
	"google.golang.org/api v0.4.0/go.mod"
	"google.golang.org/api v0.7.0"
	"google.golang.org/api v0.7.0/go.mod"
	"google.golang.org/api v0.15.0"
	"google.golang.org/api v0.15.0/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/appengine v1.5.0/go.mod"
	"google.golang.org/appengine v1.6.1"
	"google.golang.org/appengine v1.6.1/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
	"google.golang.org/genproto v0.0.0-20190716160619-c506a9f90610"
	"google.golang.org/genproto v0.0.0-20190716160619-c506a9f90610/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/genproto v0.0.0-20190927181202-20e1ac93f88c"
	"google.golang.org/genproto v0.0.0-20190927181202-20e1ac93f88c/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.21.1"
	"google.golang.org/grpc v1.21.1/go.mod"
	"google.golang.org/grpc v1.24.0"
	"google.golang.org/grpc v1.24.0/go.mod"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.3/go.mod"
	"gopkg.in/yaml.v2 v2.2.4"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.2.7"
	"gopkg.in/yaml.v2 v2.2.7/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"honnef.co/go/tools v0.0.1-2019.2.3"
	"honnef.co/go/tools v0.0.1-2019.2.3/go.mod"
	"rsc.io/binaryregexp v0.2.0"
	"rsc.io/binaryregexp v0.2.0/go.mod"
	"sigs.k8s.io/yaml v1.1.0"
	"sigs.k8s.io/yaml v1.1.0/go.mod"
	)
go-module_set_globals
SRC_URI="https://github.com/influxdata/chronograf/archive/${PV}.tar.gz -> ${P}.tar.gz
	https://dev.gentoo.org/~williamh/dist/${P}-gen.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="AGPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

COMMON_DEPEND="acct-group/chronograf
	acct-user/chronograf"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_prepare() {
	default
	mv ../canned/bin_gen.go canned || die
	mv ../dist/dist_gen.go dist || die
	mv ../protoboards/bin_gen.go protoboards || die
	mv ../server/swagger_gen.go server || die
}

src_compile() {
	local go_ldflags
	go_ldflags="
		-X main.commit=${COMMIT}
		-X main.version=${PV}"
	go build \
		-o chronograf \
		-ldflags "${go_ldflags}" \
		./cmd/chronograf/main.go || die "could not compile chronograf"
	go build \
		-o chronoctl \
		-ldflags "${go_ldflags}" \
		./cmd/chronoctl || die "could not compile chronoctl"
}

src_install() {
	dobin chronograf chronoctl
	dodoc CHANGELOG.md
	insinto /etc/logrotate.d
	newins etc/scripts/logrotate chronograf
	systemd_dounit etc/scripts/chronograf.service
	insinto /usr/share/chronograf/canned
	doins canned/*.json
	keepdir /usr/share/chronograf/resources
	newconfd "${FILESDIR}"/chronograf.confd chronograf
	newinitd "${FILESDIR}"/chronograf.rc chronograf
	keepdir /var/log/chronograf
	fowners chronograf:chronograf /var/log/chronograf
}

pkg_postinst() {
	if [[ -z "${REPLACING_VERSIONS}" ]]; then
		einfo "In order to use chronograf, you will need to configure"
		einfo "the appropriate options in ${EROOT}/etc/conf.d/chronograf"
	fi
}
