.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createMenu(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

.field final synthetic val$options:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 2257
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;->val$options:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2260
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_12

    if-ltz p2, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;->val$options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_13

    .line 2264
    :cond_12
    :goto_12
    return-void

    .line 2263
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;->val$options:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->processSelectedOption(I)V
    invoke-static {v1, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)V

    goto :goto_12
.end method
