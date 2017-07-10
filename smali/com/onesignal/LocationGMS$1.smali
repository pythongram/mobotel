.class final Lcom/onesignal/LocationGMS$1;
.super Ljava/lang/Object;
.source "LocationGMS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/LocationGMS;->startFallBackThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 198
    const-wide/16 v0, 0x7530

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 199
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Location permission exists but GoogleApiClient timed out. Maybe related to mismatch google-play aar versions."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_10

    .line 202
    :goto_f
    return-void

    .line 201
    :catch_10
    move-exception v0

    goto :goto_f
.end method
