.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final scrollValue:I

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

.field private totalDy:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 961
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->totalDy:F

    .line 964
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const v1, 0x7fffffff

    .line 968
    const/4 v0, 0x1

    if-ne p2, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v0

    if-eq v0, v1, :cond_18

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # setter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3802(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)I

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    .line 972
    :cond_18
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 9
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v3, 0x0

    .line 977
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 978
    .local v0, "firstVisibleItem":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2f

    move v2, v3

    .line 979
    .local v2, "visibleItemCount":I
    :goto_f
    if-lez v2, :cond_29

    .line 980
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->getItemCount()I

    move-result v1

    .line 981
    .local v1, "totalItemCount":I
    add-int v4, v0, v2

    if-ne v4, v1, :cond_29

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Z

    move-result-object v4

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_29

    .line 984
    .end local v1    # "totalItemCount":I
    :cond_29
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateMessagesVisisblePart()V
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    .line 985
    return-void

    .line 978
    .end local v2    # "visibleItemCount":I
    :cond_2f
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    goto :goto_f
.end method
