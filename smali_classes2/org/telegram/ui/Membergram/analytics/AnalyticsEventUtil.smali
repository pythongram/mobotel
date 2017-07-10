.class public Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;
.super Ljava/lang/Object;
.source "AnalyticsEventUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendScreenName(Ljava/lang/String;)V
    .registers 3
    .param p0, "screenName"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getInstance()Lorg/telegram/messenger/ApplicationLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ApplicationLoader;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 11
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 13
    return-void
.end method
