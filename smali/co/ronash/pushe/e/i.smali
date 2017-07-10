.class public Lco/ronash/pushe/e/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/e/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x10

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lco/ronash/pushe/e/i;->c()Ljava/lang/String;
    :try_end_6
    .catch Lco/ronash/pushe/k/b; {:try_start_3 .. :try_end_6} :catch_47

    move-result-object v0

    :goto_7
    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lco/ronash/pushe/e/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NO-IMEI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2b
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NO-IMEI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :catch_47
    move-exception v1

    goto :goto_7
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/e/i;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lco/ronash/pushe/e/i;->b()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lco/ronash/pushe/k/b;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lco/ronash/pushe/e/i;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    new-instance v0, Lco/ronash/pushe/e/j;

    iget-object v1, p0, Lco/ronash/pushe/e/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/e/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/e/j;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/e/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
