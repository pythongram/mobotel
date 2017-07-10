.class public Lorg/telegram/tgnet/TLRPC$MessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

.field public bytes:[B

.field public caption:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public game:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public last_name:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public provider:Ljava/lang/String;

.field public receipt_msg_id:I

.field public shipping_address_requested:Z

.field public start_param:Ljava/lang/String;

.field public test:Z

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public user_id:I

.field public venue_id:Ljava/lang/String;

.field public video_unused:Lorg/telegram/tgnet/TLRPC$Video;

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24441
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .registers 12
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    const/4 v8, 0x1

    .line 24469
    const/4 v3, 0x0

    .line 24470
    .local v3, "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    sparse-switch p1, :sswitch_data_1c2

    .line 24520
    :goto_5
    if-nez v3, :cond_7e

    if-eqz p2, :cond_7e

    .line 24521
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "can\'t parse magic %x in MessageMedia"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 24472
    :sswitch_1e
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    .line 24473
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24475
    :sswitch_24
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;-><init>()V

    .line 24476
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24478
    :sswitch_2a
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;-><init>()V

    .line 24479
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24481
    :sswitch_30
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;-><init>()V

    .line 24482
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24484
    :sswitch_36
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;-><init>()V

    .line 24485
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24487
    :sswitch_3c
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    .line 24488
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24490
    :sswitch_42
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 24491
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24493
    :sswitch_48
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;-><init>()V

    .line 24494
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24496
    :sswitch_4e
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;-><init>()V

    .line 24497
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24499
    :sswitch_54
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 24500
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24502
    :sswitch_5a
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    .line 24503
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24505
    :sswitch_60
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    .line 24506
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24508
    :sswitch_66
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 24509
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24511
    :sswitch_6c
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    .line 24512
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24514
    :sswitch_72
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 24515
    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24517
    :sswitch_78
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    .end local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    .restart local v3    # "result":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    goto :goto_5

    .line 24523
    :cond_7e
    if-eqz v3, :cond_112

    .line 24524
    invoke-virtual {v3, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 24525
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    if-eqz v4, :cond_122

    .line 24526
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 24527
    .local v2, "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    if-eqz v4, :cond_113

    .line 24528
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 24529
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 24530
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 24534
    :goto_a9
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 24535
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 24536
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 24537
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_11b

    .line 24538
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 24542
    :goto_cf
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 24543
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 24544
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 24545
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 24546
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 24547
    .local v1, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 24548
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 24549
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 24550
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24551
    move-object v3, v2

    .line 24552
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    if-nez v4, :cond_112

    .line 24553
    const-string v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 24587
    .end local v1    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_112
    :goto_112
    return-object v3

    .line 24532
    .restart local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_113
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_a9

    .line 24540
    :cond_11b
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v5, "video/mp4"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_cf

    .line 24555
    .end local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    :cond_122
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    if-eqz v4, :cond_112

    .line 24556
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 24557
    .restart local v2    # "mediaDocument":Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    if-eqz v4, :cond_1b2

    .line 24558
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 24559
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 24560
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 24564
    :goto_148
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Audio;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 24565
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Audio;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 24566
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 24567
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_1ba

    .line 24568
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 24572
    :goto_16e
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 24573
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 24574
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 24575
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Audio;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 24576
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    .line 24577
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 24578
    .local v0, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Audio;->duration:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 24579
    iput-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 24580
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24581
    move-object v3, v2

    .line 24582
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    if-nez v4, :cond_112

    .line 24583
    const-string v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->caption:Ljava/lang/String;

    goto/16 :goto_112

    .line 24562
    .end local v0    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :cond_1b2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_148

    .line 24570
    :cond_1ba
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v5, "audio/ogg"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_16e

    .line 24470
    nop

    :sswitch_data_1c2
    .sparse-switch
        -0x7baaecb9 -> :sswitch_30
        -0x607b0b62 -> :sswitch_36
        -0x5d2dbd70 -> :sswitch_48
        -0x5cd22a00 -> :sswitch_78
        -0x39497d00 -> :sswitch_24
        -0x373ba5d6 -> :sswitch_2a
        -0xc1fd158 -> :sswitch_54
        -0x24e6ff8 -> :sswitch_5a
        0x29632a36 -> :sswitch_1e
        0x2fda2204 -> :sswitch_4e
        0x3d8ce53d -> :sswitch_66
        0x3ded6320 -> :sswitch_3c
        0x56e0d474 -> :sswitch_72
        0x5bcf1675 -> :sswitch_6c
        0x5e7d2f39 -> :sswitch_60
        0x7912b71f -> :sswitch_42
    .end sparse-switch
.end method
