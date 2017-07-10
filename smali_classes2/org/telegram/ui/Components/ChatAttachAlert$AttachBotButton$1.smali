.class Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->onLongPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v0}, Lorg/telegram/messenger/query/SearchQuery;->removeInline(I)V

    .line 275
    return-void
.end method
