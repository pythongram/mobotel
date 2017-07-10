.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$18;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 1163
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$18;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1166
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$18;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$18;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/StickerPreviewViewer;->onTouch(Landroid/view/MotionEvent;Landroid/view/View;ILjava/lang/Object;Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method
