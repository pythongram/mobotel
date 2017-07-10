.class public abstract Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsCallback.java"

# interfaces
.implements Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.ICustomTabsCallback"

.field static final TRANSACTION_extraCallback:I = 0x3

.field static final TRANSACTION_onNavigationEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {p0, p0, v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_3
    return-object v0

    .line 44
    :cond_4
    const-string v1, "android.support.customtabs.ICustomTabsCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    goto :goto_3

    :cond_13
    new-instance v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v3, 0x1

    .line 55
    sparse-switch p1, :sswitch_data_4a

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 57
    :sswitch_9
    const-string v4, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_arg01":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 60
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 65
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_20
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->onNavigationEvent(ILandroid/os/Bundle;)V

    goto :goto_8

    .line 62
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_24
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_20

    .line 68
    .end local v1    # "_arg01":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_26
    const-string v4, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 71
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 76
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_3d
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    .line 73
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_41
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_3d

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_43
    const-string v4, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 55
    nop

    :sswitch_data_4a
    .sparse-switch
        0x2 -> :sswitch_9
        0x3 -> :sswitch_26
        0x5f4e5446 -> :sswitch_43
    .end sparse-switch
.end method
