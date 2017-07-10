.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$21;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/MessageObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 1669
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$21;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1669
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$21;->compare(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "messageObject2"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1671
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v0, v1, :cond_c

    .line 1672
    const/4 v0, -0x1

    .line 1677
    :goto_b
    return v0

    .line 1674
    :cond_c
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v0, v1, :cond_18

    .line 1675
    const/4 v0, 0x1

    goto :goto_b

    .line 1677
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method
