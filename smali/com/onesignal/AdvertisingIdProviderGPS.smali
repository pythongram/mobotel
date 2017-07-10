.class Lcom/onesignal/AdvertisingIdProviderGPS;
.super Ljava/lang/Object;
.source "AdvertisingIdProviderGPS.java"

# interfaces
.implements Lcom/onesignal/AdvertisingIdentifierProvider;


# static fields
.field private static lastValue:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLastValue()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 46
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 47
    const-string v2, "OptedOut"

    sput-object v2, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    .line 51
    :goto_e
    sget-object v2, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    .line 61
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_10
    return-object v2

    .line 49
    .restart local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_e

    .line 52
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catch_18
    move-exception v1

    .line 53
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error getting Google Ad id: "

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const/4 v2, 0x0

    goto :goto_10
.end method
