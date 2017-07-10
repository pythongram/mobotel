.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$28;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->DM_DeleteDownloaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 3511
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$28;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$28;->val$messages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 3515
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$28;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6b

    .line 3516
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$28;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3517
    .local v4, "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v1, 0x0

    .line 3518
    .local v1, "downloaded":Z
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v5, :cond_2c

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2c

    .line 3519
    new-instance v3, Ljava/io/File;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3520
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 3521
    const/4 v1, 0x1

    .line 3524
    .end local v3    # "f":Ljava/io/File;
    :cond_2c
    if-nez v1, :cond_39

    .line 3525
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v3

    .line 3526
    .restart local v3    # "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 3527
    const/4 v1, 0x1

    .line 3530
    .end local v3    # "f":Ljava/io/File;
    :cond_39
    if-eqz v1, :cond_62

    .line 3531
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "DELETE FROM turbo_idm WHERE mid = %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_65

    .line 3515
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3534
    .end local v1    # "downloaded":Z
    .end local v4    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_65
    move-exception v2

    .line 3535
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3537
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6b
    return-void
.end method
