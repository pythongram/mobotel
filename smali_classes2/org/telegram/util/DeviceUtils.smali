.class public Lorg/telegram/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUniqueID(Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p0}, Lorg/telegram/util/PermissionsUtil;->canAccessDeviceState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 22
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 25
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "tmDevice":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "tmSerial":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "androidId":Ljava/lang/String;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v8, v5

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v10, v5

    or-long/2addr v8, v10

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 31
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 33
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "deviceUuid":Ljava/util/UUID;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "tmDevice":Ljava/lang/String;
    .end local v4    # "tmSerial":Ljava/lang/String;
    :goto_75
    return-object v5

    :cond_76
    const/4 v5, 0x0

    goto :goto_75
.end method
