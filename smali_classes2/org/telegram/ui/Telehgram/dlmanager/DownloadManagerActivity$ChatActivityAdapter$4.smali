.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

.field final synthetic val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    .prologue
    .line 3281
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 8

    .prologue
    .line 3284
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3286
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v1

    .line 3287
    .local v1, "height":I
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTop()I

    move-result v2

    .line 3288
    .local v2, "top":I
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBottom()I

    move-result v0

    .line 3289
    .local v0, "bottom":I
    if-ltz v2, :cond_37

    const/4 v4, 0x0

    .line 3290
    .local v4, "viewTop":I
    :goto_24
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMeasuredHeight()I

    move-result v3

    .line 3291
    .local v3, "viewBottom":I
    if-le v3, v1, :cond_2e

    .line 3292
    add-int v3, v4, v1

    .line 3294
    :cond_2e
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sub-int v6, v3, v4

    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setVisiblePart(II)V

    .line 3296
    const/4 v5, 0x1

    return v5

    .line 3289
    .end local v3    # "viewBottom":I
    .end local v4    # "viewTop":I
    :cond_37
    neg-int v4, v2

    goto :goto_24
.end method
