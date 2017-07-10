.class Lco/ronash/pushe/e/j;
.super Ljava/lang/Object;


# static fields
.field protected static volatile a:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;

    if-nez v0, :cond_25

    const-class v1, Lco/ronash/pushe/e/j;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;

    if-nez v0, :cond_24

    const-string v0, "device_id.xml"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "device_id"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;

    :cond_24
    :goto_24
    monitor-exit v1

    :cond_25
    return-void

    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_58

    move-result-object v0

    :try_start_30
    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "utf8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_44} :catch_76
    .catchall {:try_start_30 .. :try_end_44} :catchall_58

    :goto_44
    :try_start_44
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "device_id"

    sget-object v3, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_24

    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_58

    throw v0

    :cond_5b
    :try_start_5b
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    const-string v3, "utf8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    :goto_73
    sput-object v0, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;
    :try_end_75
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5b .. :try_end_75} :catch_76
    .catchall {:try_start_5b .. :try_end_75} :catchall_58

    goto :goto_44

    :catch_76
    move-exception v0

    :try_start_77
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_58

    :cond_7d
    :try_start_7d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    :try_end_80
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7d .. :try_end_80} :catch_76
    .catchall {:try_start_7d .. :try_end_80} :catchall_58

    move-result-object v0

    goto :goto_73
.end method


# virtual methods
.method public a()Ljava/util/UUID;
    .registers 2

    sget-object v0, Lco/ronash/pushe/e/j;->a:Ljava/util/UUID;

    return-object v0
.end method
