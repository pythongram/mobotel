.class Lorg/telegram/ui/Components/EmojiView$24$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$24;->onLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$24;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$24;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$24;

    .prologue
    .line 1149
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$24$1;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1151
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->clearRecents(I)V

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$24$1;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$24$1;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1154
    return-void
.end method
