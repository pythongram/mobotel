.class Lorg/telegram/ui/Components/StickersAlert$17;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->updateFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 538
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 542
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$3500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$3500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetInstalled()V

    .line 545
    :cond_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;-><init>()V

    .line 546
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 547
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$17$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$17$1;-><init>(Lorg/telegram/ui/Components/StickersAlert$17;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 578
    return-void
.end method
