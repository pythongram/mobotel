.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$17;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1155
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$17;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1158
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$17;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v1, v4}, Lorg/telegram/ui/StickerPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;ILorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z

    move-result v0

    .line 1159
    .local v0, "result":Z
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method
