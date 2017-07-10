.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
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
    .line 300
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 304
    if-ltz p3, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->botContextResults:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_f

    .line 333
    :cond_f
    return-object v1
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 368
    if-ltz p1, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->botContextResults:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    .line 371
    :cond_e
    return-void
.end method

.method public setPhotoChecked(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 359
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 381
    return-void
.end method

.method public willHidePhotoViewer()V
    .registers 1

    .prologue
    .line 349
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 344
    return-void
.end method
