.class public Lorg/telegram/tgnet/TLRPC$TL_config;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_config"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public call_connect_timeout_ms:I

.field public call_packet_timeout_ms:I

.field public call_receive_timeout_ms:I

.field public call_ring_timeout_ms:I

.field public chat_big_size:I

.field public chat_size_max:I

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

.field public disabled_features:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;",
            ">;"
        }
    .end annotation
.end field

.field public edit_time_limit:I

.field public expires:I

.field public flags:I

.field public forwarded_count_max:I

.field public me_url_prefix:Ljava/lang/String;

.field public megagroup_size_max:I

.field public notify_cloud_delay_ms:I

.field public notify_default_delay_ms:I

.field public offline_blur_timeout_ms:I

.field public offline_idle_timeout_ms:I

.field public online_cloud_timeout_ms:I

.field public online_update_period_ms:I

.field public phonecalls_enabled:Z

.field public pinned_dialogs_count_max:I

.field public push_chat_limit:I

.field public push_chat_period_ms:I

.field public rating_e_decay:I

.field public saved_gifs_limit:I

.field public stickers_recent_limit:I

.field public test_mode:Z

.field public this_dc:I

.field public tmp_sessions:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14709
    const v0, -0x349fe97c    # -1.4685828E7f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14708
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 14717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    .line 14741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 14744
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 14745
    if-eqz p2, :cond_1c

    .line 14746
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_config"

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

    .line 14748
    :cond_1c
    const/4 v0, 0x0

    .line 14753
    :goto_1d
    return-object v0

    .line 14751
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_config;-><init>()V

    .line 14752
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_config;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_config;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v7, 0x1cb5c415

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 14757
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 14758
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_48

    move v4, v5

    :goto_12
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    .line 14759
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    .line 14760
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    .line 14761
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    .line 14762
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    .line 14763
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 14764
    .local v2, "magic":I
    if-eq v2, v7, :cond_4a

    .line 14765
    if-eqz p2, :cond_5b

    .line 14766
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_48
    move v4, v6

    .line 14758
    goto :goto_12

    .line 14770
    .restart local v2    # "magic":I
    :cond_4a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 14771
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4f
    if-ge v0, v1, :cond_64

    .line 14772
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    move-result-object v3

    .line 14773
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    if-nez v3, :cond_5c

    .line 14818
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    :cond_5b
    return-void

    .line 14776
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    :cond_5c
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14771
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 14778
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    :cond_64
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    .line 14779
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    .line 14780
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    .line 14781
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    .line 14782
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    .line 14783
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    .line 14784
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    .line 14785
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    .line 14786
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    .line 14787
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    .line 14788
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    .line 14789
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    .line 14790
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    .line 14791
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    .line 14792
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    .line 14793
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    .line 14794
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d0

    .line 14795
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    .line 14797
    :cond_d0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    .line 14798
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    .line 14799
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    .line 14800
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    .line 14801
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    .line 14802
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    .line 14803
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 14804
    if-eq v2, v7, :cond_110

    .line 14805
    if-eqz p2, :cond_5b

    .line 14806
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14810
    :cond_110
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 14811
    const/4 v0, 0x0

    :goto_115
    if-ge v0, v1, :cond_5b

    .line 14812
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    move-result-object v3

    .line 14813
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    if-eqz v3, :cond_5b

    .line 14816
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14811
    add-int/lit8 v0, v0, 0x1

    goto :goto_115
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 14821
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14822
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    if-eqz v2, :cond_48

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_10
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 14823
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14824
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14825
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14826
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 14827
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14828
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14829
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 14830
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14831
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_38
    if-ge v0, v1, :cond_4d

    .line 14832
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14831
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 14822
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_48
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_10

    .line 14834
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_4d
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14835
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14836
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14837
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14838
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14839
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14840
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14841
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14842
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14843
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14844
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14845
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14846
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14847
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14848
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14849
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14850
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a8

    .line 14851
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14853
    :cond_a8
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14854
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14855
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14856
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14857
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14858
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 14859
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14860
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 14861
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14862
    const/4 v0, 0x0

    :goto_d3
    if-ge v0, v1, :cond_e3

    .line 14863
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14862
    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    .line 14865
    :cond_e3
    return-void
.end method
