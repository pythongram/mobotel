.class public Lorg/telegram/tgnet/TLRPC$Update;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Update"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public blocked:Z

.field public channel_id:I

.field public chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public chat_id:I

.field public chat_instance:J

.field public data:[B

.field public date:I

.field public dc_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dcOption;",
            ">;"
        }
    .end annotation
.end field

.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public enabled:Z

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public game_short_name:Ljava/lang/String;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public inbox_date:I

.field public inviter_id:I

.field public is_admin:Z

.field public key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

.field public last_name:Ljava/lang/String;

.field public masks:Z

.field public max_date:I

.field public max_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public offset:Ljava/lang/String;

.field public participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

.field public phone:Ljava/lang/String;

.field public phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field public photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public pinned:Z

.field public popup:Z

.field public previous:Z

.field public pts:I

.field public pts_count:I

.field public qts:I

.field public query:Ljava/lang/String;

.field public query_id:J

.field public random_id:J

.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lorg/telegram/tgnet/TLRPC$UserStatus;

.field public stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field public type:Ljava/lang/String;

.field public user_id:I

.field public username:Ljava/lang/String;

.field public version:I

.field public views:I

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11914
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    .line 11947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->entities:Ljava/util/ArrayList;

    .line 11951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    .line 11961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->dc_options:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11969
    const/4 v0, 0x0

    .line 11970
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Update;
    sparse-switch p1, :sswitch_data_1a2

    .line 12143
    :goto_4
    if-nez v0, :cond_19c

    if-eqz p2, :cond_19c

    .line 12144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Update"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11972
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;-><init>()V

    .line 11973
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11975
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;-><init>()V

    .line 11976
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11978
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;-><init>()V

    .line 11979
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11981
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;-><init>()V

    .line 11982
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11984
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;-><init>()V

    .line 11985
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11987
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;-><init>()V

    .line 11988
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11990
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;-><init>()V

    .line 11991
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11993
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    .line 11994
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11996
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;-><init>()V

    .line 11997
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 11999
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;-><init>()V

    .line 12000
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12002
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;-><init>()V

    .line 12003
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12005
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 12006
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12008
    :sswitch_66
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;-><init>()V

    .line 12009
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12011
    :sswitch_6c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;-><init>()V

    .line 12012
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12014
    :sswitch_72
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;-><init>()V

    .line 12015
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12017
    :sswitch_78
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;-><init>()V

    .line 12018
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12020
    :sswitch_7e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;-><init>()V

    .line 12021
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_4

    .line 12023
    :sswitch_84
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePtsChanged;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePtsChanged;-><init>()V

    .line 12024
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12026
    :sswitch_8b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;-><init>()V

    .line 12027
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12029
    :sswitch_92
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;-><init>()V

    .line 12030
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12032
    :sswitch_99
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;-><init>()V

    .line 12033
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12035
    :sswitch_a0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;-><init>()V

    .line 12036
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12038
    :sswitch_a7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;-><init>()V

    .line 12039
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12041
    :sswitch_ae
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;-><init>()V

    .line 12042
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12044
    :sswitch_b5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;-><init>()V

    .line 12045
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12047
    :sswitch_bc
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;-><init>()V

    .line 12048
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12050
    :sswitch_c3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;-><init>()V

    .line 12051
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12053
    :sswitch_ca
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;-><init>()V

    .line 12054
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12056
    :sswitch_d1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;-><init>()V

    .line 12057
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12059
    :sswitch_d8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    .line 12060
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12062
    :sswitch_df
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;-><init>()V

    .line 12063
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12065
    :sswitch_e6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;-><init>()V

    .line 12066
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12068
    :sswitch_ed
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;-><init>()V

    .line 12069
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12071
    :sswitch_f4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;-><init>()V

    .line 12072
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12074
    :sswitch_fb
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;-><init>()V

    .line 12075
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12077
    :sswitch_102
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;-><init>()V

    .line 12078
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12080
    :sswitch_109
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;-><init>()V

    .line 12081
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12083
    :sswitch_110
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;-><init>()V

    .line 12084
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12086
    :sswitch_117
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;-><init>()V

    .line 12087
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12089
    :sswitch_11e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;-><init>()V

    .line 12090
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12092
    :sswitch_125
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;-><init>()V

    .line 12093
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12095
    :sswitch_12c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    .line 12096
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12098
    :sswitch_133
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;-><init>()V

    .line 12099
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12101
    :sswitch_13a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;-><init>()V

    .line 12102
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12104
    :sswitch_141
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;-><init>()V

    .line 12105
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12107
    :sswitch_148
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;-><init>()V

    .line 12108
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12110
    :sswitch_14f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;-><init>()V

    .line 12111
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12113
    :sswitch_156
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;-><init>()V

    .line 12114
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12116
    :sswitch_15d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;-><init>()V

    .line 12117
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12119
    :sswitch_164
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;-><init>()V

    .line 12120
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12122
    :sswitch_16b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;-><init>()V

    .line 12123
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12125
    :sswitch_172
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;-><init>()V

    .line 12126
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12128
    :sswitch_179
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;-><init>()V

    .line 12129
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12131
    :sswitch_180
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;-><init>()V

    .line 12132
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12134
    :sswitch_187
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 12135
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12137
    :sswitch_18e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;-><init>()V

    .line 12138
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12140
    :sswitch_195
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_4

    .line 12146
    :cond_19c
    if-eqz v0, :cond_1a1

    .line 12147
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Update;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 12149
    :cond_1a1
    return-object v0

    .line 11970
    :sswitch_data_1a2
    .sparse-switch
        -0x7f1317e6 -> :sswitch_16b
        -0x71a1678d -> :sswitch_15d
        -0x6c8acbe2 -> :sswitch_13a
        -0x6acec4f4 -> :sswitch_156
        -0x67a6db8b -> :sswitch_df
        -0x675ed4b5 -> :sswitch_7e
        -0x669e02a4 -> :sswitch_12c
        -0x65bdd3e0 -> :sswitch_11e
        -0x659a15e1 -> :sswitch_bc
        -0x62d1983b -> :sswitch_133
        -0x5df24f1b -> :sswitch_1e
        -0x5dd622fa -> :sswitch_fb
        -0x58ccd48d -> :sswitch_109
        -0x54f094e2 -> :sswitch_110
        -0x4b5d1773 -> :sswitch_c3
        -0x496fe6a7 -> :sswitch_e6
        -0x492ba9aa -> :sswitch_141
        -0x413d9711 -> :sswitch_8b
        -0x3c8ade37 -> :sswitch_14f
        -0x28ee5d34 -> :sswitch_4e
        -0x27350973 -> :sswitch_117
        -0x1bfc8f5d -> :sswitch_a0
        -0x18cab81f -> :sswitch_3c
        -0x15b4f1a4 -> :sswitch_b5
        -0x14fb9805 -> :sswitch_ca
        -0x141b97e7 -> :sswitch_d8
        -0x11d44697 -> :sswitch_102
        -0x11c4d8d6 -> :sswitch_f4
        -0x62d85a6 -> :sswitch_30
        0x7761198 -> :sswitch_195
        0xbb2d201 -> :sswitch_180
        0xe48f964 -> :sswitch_a7
        0x12b9417b -> :sswitch_54
        0x12bcbd9a -> :sswitch_72
        0x1710f156 -> :sswitch_36
        0x1b3f4df7 -> :sswitch_164
        0x1bfbd823 -> :sswitch_78
        0x1f2b0afd -> :sswitch_6c
        0x2575bbb9 -> :sswitch_92
        0x25d6c9c7 -> :sswitch_60
        0x2f2f21bf -> :sswitch_48
        0x3354678f -> :sswitch_84
        0x38fe25b7 -> :sswitch_179
        0x40771900 -> :sswitch_148
        0x4214f37f -> :sswitch_187
        0x43ae3dec -> :sswitch_66
        0x4e90bfd6 -> :sswitch_5a
        0x54826690 -> :sswitch_ed
        0x571d2742 -> :sswitch_24
        0x5a68e3f7 -> :sswitch_125
        0x5c486927 -> :sswitch_d1
        0x62ba04d9 -> :sswitch_42
        0x688a30aa -> :sswitch_172
        0x68c13933 -> :sswitch_18e
        0x6e5f8c22 -> :sswitch_99
        0x6e947941 -> :sswitch_2a
        0x7f891213 -> :sswitch_ae
    .end sparse-switch
.end method
