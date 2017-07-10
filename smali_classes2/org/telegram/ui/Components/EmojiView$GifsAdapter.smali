.class Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2729
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2730
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->mContext:Landroid/content/Context;

    .line 2731
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 2740
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 2745
    int-to-long v0, p1

    return-wide v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2735
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 2756
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2757
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v0, :cond_16

    .line 2758
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setGif(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 2760
    :cond_16
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 2750
    new-instance v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 2751
    .local v0, "view":Lorg/telegram/ui/Cells/ContextLinkCell;
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
