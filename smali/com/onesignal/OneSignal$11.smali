.class final Lcom/onesignal/OneSignal$11;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1206
    const-string v0, "sending Notification Opened Failed"

    # invokes: Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$1700(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 1207
    return-void
.end method
