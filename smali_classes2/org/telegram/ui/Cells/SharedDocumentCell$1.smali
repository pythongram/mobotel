.class Lorg/telegram/ui/Cells/SharedDocumentCell$1;
.super Ljava/lang/Object;
.source "SharedDocumentCell.java"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/SharedDocumentCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/SharedDocumentCell;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/SharedDocumentCell;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell$1;->this$0:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V
    .registers 8
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "set"    # Z
    .param p3, "thumb"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell$1;->this$0:Lorg/telegram/ui/Cells/SharedDocumentCell;

    # getter for: Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->access$000(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz p2, :cond_1a

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell$1;->this$0:Lorg/telegram/ui/Cells/SharedDocumentCell;

    # getter for: Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->access$100(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p2, :cond_1c

    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    return-void

    :cond_1a
    move v0, v2

    .line 91
    goto :goto_b

    :cond_1c
    move v1, v2

    .line 92
    goto :goto_16
.end method
