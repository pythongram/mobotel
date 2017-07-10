.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$9;
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
    .line 917
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$9;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 920
    const/4 v0, 0x1

    return v0
.end method
