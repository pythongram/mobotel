.class Lorg/telegram/messenger/ApplicationLoader$2$2;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader$2;->notificationReceived(Lcom/onesignal/OSNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ApplicationLoader$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ApplicationLoader$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/ApplicationLoader$2;

    .prologue
    .line 469
    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoader$2$2;->this$1:Lorg/telegram/messenger/ApplicationLoader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 472
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$2$2$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/ApplicationLoader$2$2$1;-><init>(Lorg/telegram/messenger/ApplicationLoader$2$2;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method
