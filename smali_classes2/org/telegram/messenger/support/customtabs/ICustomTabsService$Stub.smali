.class public abstract Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsService.java"

# interfaces
.implements Lorg/telegram/messenger/support/customtabs/ICustomTabsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.ICustomTabsService"

.field static final TRANSACTION_extraCommand:I = 0x5

.field static final TRANSACTION_mayLaunchUrl:I = 0x4

.field static final TRANSACTION_newSession:I = 0x3

.field static final TRANSACTION_updateVisuals:I = 0x6

.field static final TRANSACTION_warmup:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p0, p0, v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_3
    return-object v0

    .line 57
    :cond_4
    const-string v1, "android.support.customtabs.ICustomTabsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    if-eqz v1, :cond_13

    check-cast v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    goto :goto_3

    :cond_13
    new-instance v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 63
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    sparse-switch p1, :sswitch_data_ee

    .line 143
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    :goto_7
    return v11

    .line 73
    :sswitch_8
    const-string v11, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 75
    .local v2, "_arg02":J
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->warmup(J)Z

    move-result v8

    .line 76
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v8, :cond_20

    const/4 v11, 0x1

    :goto_1b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v11, 0x1

    goto :goto_7

    .line 77
    :cond_20
    const/4 v11, 0x0

    goto :goto_1b

    .line 80
    .end local v2    # "_arg02":J
    .end local v8    # "_result":Z
    :sswitch_22
    const-string v11, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z

    move-result v6

    .line 83
    .local v6, "_arg12":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v6, :cond_3e

    const/4 v11, 0x1

    :goto_39
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v11, 0x1

    goto :goto_7

    .line 84
    :cond_3e
    const/4 v11, 0x0

    goto :goto_39

    .line 87
    .end local v0    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v6    # "_arg12":Z
    :sswitch_40
    const-string v11, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7e

    .line 91
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 96
    .local v5, "_arg11":Landroid/net/Uri;
    :goto_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_80

    .line 97
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 102
    .local v10, "_result2":Landroid/os/Bundle;
    :goto_69
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 103
    .local v7, "_arg3":Ljava/util/ArrayList;
    invoke-virtual {p0, v0, v5, v10, v7}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v9

    .line 104
    .local v9, "_result1":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v9, :cond_82

    const/4 v11, 0x1

    :goto_79
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v11, 0x1

    goto :goto_7

    .line 93
    .end local v5    # "_arg11":Landroid/net/Uri;
    .end local v7    # "_arg3":Ljava/util/ArrayList;
    .end local v9    # "_result1":Z
    .end local v10    # "_result2":Landroid/os/Bundle;
    :cond_7e
    const/4 v5, 0x0

    .restart local v5    # "_arg11":Landroid/net/Uri;
    goto :goto_5b

    .line 99
    :cond_80
    const/4 v10, 0x0

    .restart local v10    # "_result2":Landroid/os/Bundle;
    goto :goto_69

    .line 105
    .restart local v7    # "_arg3":Ljava/util/ArrayList;
    .restart local v9    # "_result1":Z
    :cond_82
    const/4 v11, 0x0

    goto :goto_79

    .line 108
    .end local v0    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v5    # "_arg11":Landroid/net/Uri;
    .end local v7    # "_arg3":Ljava/util/ArrayList;
    .end local v9    # "_result1":Z
    .end local v10    # "_result2":Landroid/os/Bundle;
    :sswitch_84
    const-string v11, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "_arg01":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_af

    .line 111
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 116
    .local v4, "_arg1":Landroid/os/Bundle;
    :goto_9b
    invoke-virtual {p0, v1, v4}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 117
    .restart local v10    # "_result2":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v10, :cond_b1

    .line 119
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v11, 0x1

    invoke-virtual {v10, p3, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_ac
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 113
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .end local v10    # "_result2":Landroid/os/Bundle;
    :cond_af
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Bundle;
    goto :goto_9b

    .line 122
    .restart local v10    # "_result2":Landroid/os/Bundle;
    :cond_b1
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ac

    .line 127
    .end local v1    # "_arg01":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .end local v10    # "_result2":Landroid/os/Bundle;
    :sswitch_b6
    const-string v11, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_e1

    .line 130
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 135
    .restart local v4    # "_arg1":Landroid/os/Bundle;
    :goto_d1
    invoke-virtual {p0, v0, v4}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v8

    .line 136
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v8, :cond_e3

    const/4 v11, 0x1

    :goto_db
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 132
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Z
    :cond_e1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Bundle;
    goto :goto_d1

    .line 137
    .restart local v8    # "_result":Z
    :cond_e3
    const/4 v11, 0x0

    goto :goto_db

    .line 140
    .end local v0    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Z
    :sswitch_e5
    const-string v11, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 71
    nop

    :sswitch_data_ee
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_22
        0x4 -> :sswitch_40
        0x5 -> :sswitch_84
        0x6 -> :sswitch_b6
        0x5f4e5446 -> :sswitch_e5
    .end sparse-switch
.end method
