- [Envanter ve Stok Yönetimi](#envanter-ve-stok-yönetimi)
  - [Depo Tanımlama](#depo-tanımlama)
  - [Liste Ekranı:](#liste-ekranı)
  - [Yeni Stok Kartı](#yeni-stok-kartı)
  - [Stoklarım](#stoklarım)
  - [Stok Açılış Bakiyesi Giriş](#stok-açılış-bakiyesi-giriş)
  - [Stok Hareketleri](#stok-hareketleri)
- [x-yaver-attributes](#x-yaver-attributes)
  - [x-yaver-security-roles:](#x-yaver-security-roles)
  - [x-yaver-security-tenant-roles:](#x-yaver-security-tenant-roles)
  - [x-yaver-validators:](#x-yaver-validators)
  - [x-yaver-ui:](#x-yaver-ui)
  - [x-yaver resources section:](#x-yaver-resources-section)

# Envanter ve Stok Yönetimi
## Depo Tanımlama
İşletmenin merkez ve şube benzeri depolarının ve bu depoların adreslerinin girilmesi sağlanmalıdır.
İl ve İlçe bilgilerinin katalogtan seçilmesi gerekir. Ekranda bulunması gereken alanlar:
-	Depo Adı
-	İl
-	İlçe
-	Adres
-	Açıklama

## Liste Ekranı:
İşletmeye ait depoların listelendiği ekrandır. Depo Tanımlama ekranından tanımlanan depoların listelenmesi sağlanır.

**Listede yer alacak kolonlar**
-	Depo adı
-	İl / İlçe

## Yeni Stok Kartı
Firmanın hammadde, yarı mamül, mamül gibi stoklarının takip edildiği kartlardır.
Unit Set ve Unit’in katalogtan seçilmesi gerekmektedir.
| Ünit Set | Ünit        |
| -------- | ----------- |
| Ağırlık  | ton, kg, gr |
| Hacim    | lit, ml     |
| Miktar   | Adet        |

**Stok Kartı Tanımlanması için gerekli alanlar aşağıdaki gibidir. (*) işaretliler zorunludur.**
-	Stok Kodu*
-	Stok Adı*
-	Unit Set*
-	Unit*
-	Barcode
-	Açıklama
-	Alış fiyatı
-	Satış fiyatı

**List (Depo kırılımında stoğun miktar ve birim gösterilmesi gerekir. Hareketler sonucunda oluşan adetleri gösterir)**
-	Depo
-	Miktar
-	Birim

## Stoklarım
Firmaya ait stokların ve deporlarda yer alan toplam adet/miktarın listelendiği ekrandır. Ekranda yer alan kolonlar.
**Liste ekranı:**
-	Stok Kodu
-	Stok Adı
-	Barcode No
-	Miktar
-	Unit

## Stok Açılış Bakiyesi Giriş
Stok kartı açıldıktan sonra depolarda mevcut olan miktarların girilebilmesi gerekmektedir.

Ekran da bulunması gereken alanların tümü zorunludur.
-	Stok Kodu
-	Stok Adı (Stok kodundan gelir)
-	Tarih
-	Depo
-	Miktar
-	Birim

## Stok Hareketleri
Tüm stok kartlarındaki hareketlerin listelenmesi amaçlanmaktadır. Açılış bakiyesi girişleri bu listede hareket olarak ve stok kartının içine girildiğinde Listede Depo kırılımında gösterilebilmesi gerekmektedir.
**Liste Ekranında yer alacak kolonlar:**
-	Tarih
-	Referans No
-	Stok Kodu
-	Stok Adı
-	Açıklama
-	Depo
-	Miktar


# x-yaver-attributes

## x-yaver-security-roles:
Contains comma seperated roles that has right to access related resource.
Should be placed at the end of each of method specified in paths.

## x-yaver-security-tenant-roles:
Contains comma seperated roles that has right to access related resource for projects that run with multitenancy. Should be placed at the end of each of method specified in paths.

## x-yaver-validators:
Contains object array that each object has type, param and message fields. Defines validation rules for each field. Should be placed in the properties sections for each property

## x-yaver-ui:
Contains an object has type, param and message fields. Defines component for ui generation.  Should be placed in the properties sections for each property

## x-yaver resources section:
Resources part in the x-yaver section maps models with operations.



** Examples for all attributes can be found example contract file swagger_sample.yaml in the package

