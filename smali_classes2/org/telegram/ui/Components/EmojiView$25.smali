.class Lorg/telegram/ui/Components/EmojiView$25;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 1198
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->checkScroll()V
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5400(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->checkStickersTabY(Landroid/view/View;I)V
    invoke-static {v0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V

    .line 1202
    return-void
.end method
