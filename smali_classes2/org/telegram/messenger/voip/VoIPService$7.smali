.class Lorg/telegram/messenger/voip/VoIPService$7;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCallAndStartRinging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 582
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 585
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$7$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$7$1;-><init>(Lorg/telegram/messenger/voip/VoIPService$7;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method
