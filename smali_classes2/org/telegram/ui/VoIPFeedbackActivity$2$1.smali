.class Lorg/telegram/ui/VoIPFeedbackActivity$2$1;
.super Ljava/lang/Object;
.source "VoIPFeedbackActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFeedbackActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPFeedbackActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFeedbackActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPFeedbackActivity$2;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2$1;->this$1:Lorg/telegram/ui/VoIPFeedbackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 81
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v1, :cond_f

    move-object v0, p1

    .line 82
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 83
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 85
    .end local v0    # "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_f
    return-void
.end method
