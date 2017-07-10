.class public Lorg/telegram/messenger/FileLoadOperation;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;,
        Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    }
.end annotation


# static fields
.field private static final bigFileSizeFrom:I = 0x100000

.field private static final downloadChunkSize:I = 0x8000

.field private static final downloadChunkSizeBig:I = 0x20000

.field private static final maxDownloadRequests:I = 0x4

.field private static final maxDownloadRequestsBig:I = 0x2

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private bytesCountPadding:I

.field private cacheFileFinal:Ljava/io/File;

.field private cacheFileTemp:Ljava/io/File;

.field private cacheIvTemp:Ljava/io/File;

.field private currentDownloadChunkSize:I

.field private currentMaxDownloadRequests:I

.field private currentType:I

.field private datacenter_id:I

.field private delayedRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

.field private downloadedBytes:I

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fiv:Ljava/io/RandomAccessFile;

.field private isForceRequest:Z

.field private iv:[B

.field private key:[B

.field private location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field private nextDownloadOffset:I

.field private renameRetryCount:I

.field private requestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestsCount:I

.field private started:Z

.field private volatile state:I

.field private storePath:Ljava/io/File;

.field private tempPath:Ljava/io/File;

.field private totalBytesCount:I

.field private webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 13
    .param p1, "documentLocation"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 126
    :try_start_8
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v6, :cond_9a

    .line 127
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 128
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 129
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 130
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 131
    const/16 v6, 0x20

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 132
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    .line 140
    :cond_39
    :goto_39
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 141
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_57

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "toAdd":I
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_57

    .line 144
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    .line 145
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v7, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 148
    .end local v2    # "toAdd":I
    :cond_57
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 150
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz v6, :cond_6b

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "idx":I
    if-ne v1, v3, :cond_be

    .line 151
    .end local v1    # "idx":I
    :cond_6b
    const-string v6, ""

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 155
    :goto_6f
    const-string v6, "audio/ogg"

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 156
    const/high16 v6, 0x3000000

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 162
    :goto_7d
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v5, :cond_99

    .line 163
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v6, :cond_f9

    .line 164
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_fe

    :cond_92
    :goto_92
    packed-switch v3, :pswitch_data_108

    .line 172
    const-string v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 183
    :cond_99
    :goto_99
    return-void

    .line 134
    :cond_9a
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v6, :cond_39

    .line 135
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 136
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 137
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 138
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b5} :catch_b6

    goto :goto_39

    .line 179
    :catch_b6
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 181
    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_99

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "idx":I
    :cond_be
    :try_start_be
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_6f

    .line 157
    .end local v1    # "idx":I
    :cond_c7
    const-string v6, "video/mp4"

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 158
    const/high16 v6, 0x2000000

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_7d

    .line 160
    :cond_d6
    const/high16 v6, 0x4000000

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_7d

    .line 164
    :sswitch_db
    const-string v7, "video/mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    move v3, v4

    goto :goto_92

    :sswitch_e5
    const-string v7, "audio/ogg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    move v3, v5

    goto :goto_92

    .line 166
    :pswitch_ef
    const-string v3, ".mp4"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_99

    .line 169
    :pswitch_f4
    const-string v3, ".ogg"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_99

    .line 176
    :cond_f9
    const-string v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_fd} :catch_b6

    goto :goto_99

    .line 164
    :sswitch_data_fe
    .sparse-switch
        0xb26cbd6 -> :sswitch_e5
        0x4f62635d -> :sswitch_db
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_f4
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V
    .registers 9
    .param p1, "photoLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 83
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-eqz v0, :cond_4c

    .line 84
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 85
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 89
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 90
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    .line 92
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 100
    :cond_41
    :goto_41
    const/high16 v0, 0x1000000

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 101
    iput p3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 102
    if-eqz p2, :cond_6e

    .end local p2    # "extension":Ljava/lang/String;
    :goto_49
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 103
    return-void

    .line 93
    .restart local p2    # "extension":Ljava/lang/String;
    :cond_4c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v0, :cond_41

    .line 94
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 98
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    goto :goto_41

    .line 102
    :cond_6e
    const-string p2, "jpg"

    goto :goto_49
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V
    .registers 6
    .param p1, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 106
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    .line 107
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->access_hash:J

    .line 109
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->size:I

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 110
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->dc_id:I

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 111
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "defaultExt":Ljava/lang/String;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 113
    const/high16 v1, 0x1000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 121
    :goto_35
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 122
    return-void

    .line 114
    :cond_3e
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 115
    const/high16 v1, 0x3000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_35

    .line 116
    :cond_4d
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 117
    const/high16 v1, 0x2000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_35

    .line 119
    :cond_5c
    const/high16 v1, 0x4000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_35
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoadOperation;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 23
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoadOperation;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 23
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileLoadOperation;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 23
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoadOperation;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoadOperation;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 23
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanup()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 356
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_52

    if-eqz v3, :cond_16

    .line 358
    :try_start_5
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_4d

    .line 362
    :goto_e
    :try_start_e
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 363
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_52

    .line 370
    :cond_16
    :goto_16
    :try_start_16
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_22

    .line 371
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_57

    .line 377
    :cond_22
    :goto_22
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_75

    .line 378
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_27
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_70

    .line 379
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 380
    .local v2, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 381
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 382
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    .line 378
    :cond_4a
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 359
    .end local v0    # "a":I
    .end local v2    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :catch_4d
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_e

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_52
    move-exception v1

    .line 366
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 374
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_57
    move-exception v1

    .line 375
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 383
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v2    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_5c
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 384
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    .line 385
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_4a

    .line 388
    .end local v2    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_70
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 390
    .end local v0    # "a":I
    :cond_75
    return-void
.end method

.method private onFail(ZI)V
    .registers 5
    .param p1, "thread"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 559
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 560
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 561
    if-eqz p1, :cond_13

    .line 562
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$4;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$4;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 571
    :goto_12
    return-void

    .line 569
    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    invoke-interface {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto :goto_12
.end method

.method private onFinishLoadingFile(Z)V
    .registers 8
    .param p1, "increment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 393
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v1, v4, :cond_7

    .line 441
    :cond_6
    :goto_6
    return-void

    .line 396
    :cond_7
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 397
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 398
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz v1, :cond_18

    .line 399
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 400
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 402
    :cond_18
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz v1, :cond_77

    .line 403
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 404
    .local v0, "renameResult":Z
    if-nez v0, :cond_77

    .line 405
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_5a

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to rename temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to final = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 408
    :cond_5a
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    .line 409
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ge v1, v3, :cond_73

    .line 410
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 411
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$3;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 423
    :cond_73
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 426
    .end local v0    # "renameResult":Z
    :cond_77
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_93

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished downloading file to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 429
    :cond_93
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {v1, p0, v2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    .line 430
    if-eqz p1, :cond_6

    .line 431
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x3000000

    if-ne v1, v2, :cond_af

    .line 432
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_6

    .line 433
    :cond_af
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_c3

    .line 434
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_6

    .line 435
    :cond_c3
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_d7

    .line 436
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_6

    .line 437
    :cond_d7
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x4000000

    if-ne v1, v2, :cond_6

    .line 438
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_6
.end method

.method private processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 22
    .param p1, "requestInfo"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 445
    if-nez p2, :cond_18a

    .line 447
    :try_start_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-eq v2, v3, :cond_47

    .line 448
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 451
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 556
    :cond_32
    :goto_32
    return-void

    .line 453
    :cond_33
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3a} :catch_3b

    goto :goto_32

    .line 512
    :catch_3b
    move-exception v14

    .line 513
    .local v14, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 514
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_32

    .line 460
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_47
    :try_start_47
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 461
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 465
    .local v10, "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_53
    if-eqz v10, :cond_5b

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    if-nez v2, :cond_69

    .line 466
    :cond_5b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    goto :goto_32

    .line 463
    .end local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_62
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .restart local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_53

    .line 469
    :cond_69
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v12

    .line 470
    .local v12, "currentBytesSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    .line 471
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v12, v2, :cond_a1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eq v2, v3, :cond_91

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_16f

    :cond_91
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_a1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-gt v2, v3, :cond_16f

    :cond_a1
    const/16 v16, 0x1

    .line 473
    .local v16, "finishedDownloading":Z
    :goto_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v2, :cond_d1

    .line 474
    iget-object v2, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 475
    if-eqz v16, :cond_d1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    if-eqz v2, :cond_d1

    .line 476
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    sub-int/2addr v2, v3

    invoke-virtual {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    .line 479
    :cond_d1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_e4

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 481
    .local v11, "channel":Ljava/nio/channels/FileChannel;
    iget-object v2, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 483
    .end local v11    # "channel":Ljava/nio/channels/FileChannel;
    :cond_e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_fe

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 487
    :cond_fe
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_125

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_125

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;F)V

    .line 491
    :cond_125
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_126
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_165

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 493
    .local v13, "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v13}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-ne v2, v3, :cond_182

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 496
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v13}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    if-eqz v2, :cond_173

    .line 497
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v13}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 498
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v13}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    .line 507
    .end local v13    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_165
    :goto_165
    if-eqz v16, :cond_185

    .line 508
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    goto/16 :goto_32

    .line 471
    .end local v9    # "a":I
    .end local v16    # "finishedDownloading":Z
    :cond_16f
    const/16 v16, 0x0

    goto/16 :goto_a3

    .line 500
    .restart local v9    # "a":I
    .restart local v13    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .restart local v16    # "finishedDownloading":Z
    :cond_173
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v13}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    .line 501
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v13}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_165

    .line 491
    :cond_182
    add-int/lit8 v9, v9, 0x1

    goto :goto_126

    .line 510
    .end local v13    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_185
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_188} :catch_3b

    goto/16 :goto_32

    .line 517
    .end local v9    # "a":I
    .end local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "currentBytesSize":I
    .end local v16    # "finishedDownloading":Z
    :cond_18a
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FILE_MIGRATE_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 518
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FILE_MIGRATE_"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 519
    .local v15, "errorMsg":Ljava/lang/String;
    new-instance v17, Ljava/util/Scanner;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 520
    .local v17, "scanner":Ljava/util/Scanner;
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 523
    :try_start_1b0
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b7} :catch_1c3

    move-result-object v18

    .line 527
    .local v18, "val":Ljava/lang/Integer;
    :goto_1b8
    if-nez v18, :cond_1c7

    .line 528
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_32

    .line 524
    .end local v18    # "val":Ljava/lang/Integer;
    :catch_1c3
    move-exception v14

    .line 525
    .restart local v14    # "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    .restart local v18    # "val":Ljava/lang/Integer;
    goto :goto_1b8

    .line 530
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_1c7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 532
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto/16 :goto_32

    .line 534
    .end local v15    # "errorMsg":Ljava/lang/String;
    .end local v17    # "scanner":Ljava/util/Scanner;
    .end local v18    # "val":Ljava/lang/Integer;
    :cond_1d9
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "OFFSET_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20e

    .line 535
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_205

    .line 537
    const/4 v2, 0x1

    :try_start_1f1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1f6} :catch_1f8

    goto/16 :goto_32

    .line 538
    :catch_1f8
    move-exception v14

    .line 539
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 540
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_32

    .line 543
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_205
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_32

    .line 545
    :cond_20e
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "RETRY_LIMIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_223

    .line 546
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_32

    .line 548
    :cond_223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v2, :cond_29c

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " local_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " access_hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " volume_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 553
    :cond_293
    :goto_293
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_32

    .line 550
    :cond_29c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v2, :cond_293

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " access_hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->access_hash:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_293
.end method

.method private startDownloadRequest()V
    .registers 14

    .prologue
    .line 574
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_f

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_20

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-lt v0, v2, :cond_21

    .line 634
    :cond_20
    return-void

    .line 577
    :cond_21
    const/4 v9, 0x1

    .line 578
    .local v9, "count":I
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_34

    .line 579
    const/4 v0, 0x0

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 582
    :cond_34
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_35
    if-ge v8, v9, :cond_20

    .line 583
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_41

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_20

    .line 586
    :cond_41
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_56

    add-int/lit8 v0, v9, -0x1

    if-eq v8, v0, :cond_56

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_ad

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lt v0, v2, :cond_ad

    :cond_56
    const/4 v7, 0x1

    .line 590
    .local v7, "isLast":Z
    :goto_57
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v0, :cond_b3

    .line 591
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    .line 592
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    .line 593
    iget v10, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .local v10, "offset":I
    iput v10, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    .line 594
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    .line 595
    move-object v1, v11

    .line 597
    .local v1, "request":Lorg/telegram/tgnet/TLObject;
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_af

    const/4 v6, 0x2

    .line 606
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    .local v6, "flags":I
    :goto_74
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 607
    new-instance v12, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>(Lorg/telegram/messenger/FileLoadOperation$1;)V

    .line 608
    .local v12, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v12, v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1002(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 610
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$5;

    invoke-direct {v2, p0, v12}, Lorg/telegram/messenger/FileLoadOperation$5;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v4, :cond_d1

    const/16 v4, 0x20

    :goto_99
    or-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I
    invoke-static {v12, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$702(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 632
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    .line 582
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 586
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v6    # "flags":I
    .end local v7    # "isLast":Z
    .end local v10    # "offset":I
    .end local v12    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_ad
    const/4 v7, 0x0

    goto :goto_57

    .line 597
    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .restart local v7    # "isLast":Z
    .restart local v10    # "offset":I
    .restart local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    :cond_af
    const v6, 0x10002

    goto :goto_74

    .line 599
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v10    # "offset":I
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    :cond_b3
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    .line 600
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 601
    iget v10, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .restart local v10    # "offset":I
    iput v10, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    .line 602
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 603
    move-object v1, v11

    .line 604
    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_cd

    const/4 v6, 0x2

    .restart local v6    # "flags":I
    :goto_cc
    goto :goto_74

    .end local v6    # "flags":I
    :cond_cd
    const v6, 0x10002

    goto :goto_cc

    .line 610
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    .restart local v6    # "flags":I
    .restart local v12    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_d1
    const/4 v4, 0x0

    goto :goto_99
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 335
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$2;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public getCurrentType()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_30

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method public isForceRequest()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    .prologue
    .line 637
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    .line 638
    return-void
.end method

.method public setForceRequest(Z)V
    .registers 2
    .param p1, "forceRequest"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    .line 187
    return-void
.end method

.method public setPaths(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p1, "store"    # Ljava/io/File;
    .param p2, "temp"    # Ljava/io/File;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    .line 195
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    .line 196
    return-void
.end method

.method public start()Z
    .registers 13

    .prologue
    .line 215
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v8, :cond_6

    .line 216
    const/4 v8, 0x0

    .line 331
    :goto_5
    return v8

    .line 218
    :cond_6
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v8, :cond_15

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-nez v8, :cond_15

    .line 219
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 220
    const/4 v8, 0x0

    goto :goto_5

    .line 225
    :cond_15
    const/4 v3, 0x0

    .line 226
    .local v3, "fileNameIv":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v8, :cond_165

    .line 227
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "md5":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "fileNameTemp":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "fileNameFinal":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v8, :cond_65

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".iv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .end local v5    # "md5":Ljava/lang/String;
    :cond_65
    :goto_65
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v9, 0x100000

    if-lt v8, v9, :cond_292

    const/high16 v8, 0x20000

    :goto_6d
    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 259
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v9, 0x100000

    if-lt v8, v9, :cond_297

    const/4 v8, 0x2

    :goto_76
    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 260
    new-instance v8, Ljava/util/ArrayList;

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 261
    new-instance v8, Ljava/util/ArrayList;

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    .line 262
    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 264
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 265
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    .line 266
    .local v1, "exist":Z
    if-eqz v1, :cond_b6

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-eqz v8, :cond_b6

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-long v8, v8

    iget-object v10, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b6

    .line 267
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 270
    :cond_b6
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2be

    .line 271
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v8, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 272
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 273
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    .line 274
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    mul-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 277
    :cond_e4
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v8, :cond_10c

    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start loading file to temp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " final = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 281
    :cond_10c
    if-eqz v3, :cond_142

    .line 282
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 284
    :try_start_117
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    const-string v10, "rws"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    .line 285
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 286
    .local v6, "len":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_29a

    const-wide/16 v8, 0x20

    rem-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_29a

    .line 287
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_142} :catch_29f

    .line 297
    .end local v6    # "len":J
    :cond_142
    :goto_142
    :try_start_142
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string v10, "rws"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 298
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eqz v8, :cond_159

    .line 299
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_159} :catch_2a8

    .line 304
    :cond_159
    :goto_159
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v8, :cond_2ae

    .line 305
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 306
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 234
    .end local v1    # "exist":Z
    .end local v2    # "fileNameFinal":Ljava/lang/String;
    .end local v4    # "fileNameTemp":Ljava/lang/String;
    :cond_165
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_20d

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v8, :cond_20d

    .line 235
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_18a

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/32 v10, -0x80000000

    cmp-long v8, v8, v10

    if-eqz v8, :cond_18a

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-nez v8, :cond_192

    .line 236
    :cond_18a
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 237
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 240
    :cond_192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .restart local v4    # "fileNameTemp":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2    # "fileNameFinal":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v8, :cond_65

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".iv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_65

    .line 246
    .end local v2    # "fileNameFinal":Ljava/lang/String;
    .end local v4    # "fileNameTemp":Ljava/lang/String;
    :cond_20d
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-eqz v8, :cond_21b

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_223

    .line 247
    :cond_21b
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 248
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 251
    :cond_223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .restart local v4    # "fileNameTemp":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2    # "fileNameFinal":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v8, :cond_65

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".iv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_65

    .line 258
    :cond_292
    const v8, 0x8000

    goto/16 :goto_6d

    .line 259
    :cond_297
    const/4 v8, 0x4

    goto/16 :goto_76

    .line 289
    .restart local v1    # "exist":Z
    .restart local v6    # "len":J
    :cond_29a
    const/4 v8, 0x0

    :try_start_29b
    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_29d} :catch_29f

    goto/16 :goto_142

    .line 291
    .end local v6    # "len":J
    :catch_29f
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 293
    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    goto/16 :goto_142

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2a8
    move-exception v0

    .line 302
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_159

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2ae
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 309
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/FileLoadOperation$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/FileLoadOperation$1;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 331
    :goto_2bb
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 324
    :cond_2be
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 326
    const/4 v8, 0x0

    :try_start_2c2
    invoke-direct {p0, v8}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2c5} :catch_2c6

    goto :goto_2bb

    .line 327
    :catch_2c6
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_2bb
.end method

.method public wasStarted()Z
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    return v0
.end method
