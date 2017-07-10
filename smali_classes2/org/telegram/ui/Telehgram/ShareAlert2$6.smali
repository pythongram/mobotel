.class Lorg/telegram/ui/Telehgram/ShareAlert2$6;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "ShareAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ShareAlert2;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$6;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 11
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    .line 352
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 353
    .local v0, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v0, :cond_28

    .line 354
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v1

    .line 355
    .local v1, "pos":I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1e

    move v2, v3

    :goto_14
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 356
    rem-int/lit8 v2, v1, 0x4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_23

    :goto_1b
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 361
    .end local v1    # "pos":I
    :goto_1d
    return-void

    .line 355
    .restart local v1    # "pos":I
    :cond_1e
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_14

    .line 356
    :cond_23
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1b

    .line 358
    .end local v1    # "pos":I
    :cond_28
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 359
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1d
.end method
