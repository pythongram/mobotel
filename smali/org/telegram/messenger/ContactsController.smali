.class public Lorg/telegram/messenger/ContactsController;
.super Ljava/lang/Object;
.source "ContactsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ContactsController$Contact;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/ContactsController;

.field private static final loadContactsSync:Ljava/lang/Object;


# instance fields
.field private callPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private completedRequestsCount:I

.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsBook:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private contactsBookLoaded:Z

.field public contactsBookSPhones:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsByPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsDict:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsLoaded:Z

.field private contactsSyncInProgress:Z

.field private currentAccount:Landroid/accounts/Account;

.field private delayedContactsUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deleteAccountTTL:I

.field private groupPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreChanges:Z

.field private inviteText:Ljava/lang/String;

.field private lastContactsVersions:Ljava/lang/String;

.field private loadingCallsInfo:I

.field private loadingContacts:Z

.field private loadingDeleteInfo:I

.field private loadingGroupInfo:I

.field private loadingLastSeenInfo:I

.field private final observerLock:Ljava/lang/Object;

.field public onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onlineSortedUsersSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onlineUsersMutualSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field

.field public onlineUsersSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field

.field public phoneBookContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private privacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private projectionNames:[Ljava/lang/String;

.field private projectionPhones:[Ljava/lang/String;

.field private sectionsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortedUsersMutualSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortedUsersSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updatingInviteText:Z

.field public usersMutualSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field

.field public usersSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 45
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 46
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    .line 48
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 49
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    .line 61
    iput-object v2, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    .line 62
    iput-object v2, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    .line 63
    iput-object v2, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 75
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "contact_id"

    aput-object v2, v1, v4

    const-string v2, "data1"

    aput-object v2, v1, v3

    const-string v2, "data2"

    aput-object v2, v1, v5

    const-string v2, "data3"

    aput-object v2, v1, v6

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    .line 81
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "contact_id"

    aput-object v2, v1, v4

    const-string v2, "data2"

    aput-object v2, v1, v3

    const-string v2, "data3"

    aput-object v2, v1, v5

    const-string v2, "display_name"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "data5"

    aput-object v3, v1, v2

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 126
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "needGetStatuses"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 128
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    .line 131
    :cond_d7
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c0"

    const-string v3, "A"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c1"

    const-string v3, "A"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c4"

    const-string v3, "A"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d9"

    const-string v3, "U"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00da"

    const-string v3, "U"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00dc"

    const-string v3, "U"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cc"

    const-string v3, "I"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cd"

    const-string v3, "I"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cf"

    const-string v3, "I"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c8"

    const-string v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c9"

    const-string v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ca"

    const-string v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cb"

    const-string v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d2"

    const-string v3, "O"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d3"

    const-string v3, "O"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d6"

    const-string v3, "O"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c7"

    const-string v3, "C"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d1"

    const-string v3, "N"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0178"

    const-string v3, "Y"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00dd"

    const-string v3, "Y"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0162"

    const-string v3, "Y"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ContactsController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/ContactsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return p1
.end method

.method static synthetic access$008(Lorg/telegram/messenger/ContactsController;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/messenger/ContactsController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/ContactsController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBook()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/ContactsController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/ContactsController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatusesMaybe()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/ContactsController;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->deleteContactFromPhoneBook(I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ContactsController;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    return-void
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/ContactsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    return p1
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/ContactsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/ContactsController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/ContactsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    return p1
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/telegram/messenger/ContactsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    return p1
.end method

.method static synthetic access$2402(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/ContactsController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/ContactsController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ContactsController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/ContactsController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/ContactsController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/ContactsController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1476
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "userDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "newC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .local p4, "contactsTD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_4

    if-nez p4, :cond_4b

    .line 1477
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "newC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    .restart local p3    # "newC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance p4, Ljava/util/ArrayList;

    .end local p4    # "contactsTD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V

    .line 1479
    .restart local p4    # "contactsTD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_4b

    .line 1480
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1481
    .local v10, "uid":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_36

    .line 1482
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1483
    .local v2, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 1484
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    .end local v2    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1485
    :cond_36
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gez v12, :cond_33

    .line 1486
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1490
    .end local v1    # "a":I
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_4b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "process update - contacts add = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " delete = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1492
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1493
    .local v8, "toAdd":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    .local v9, "toDelete":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 1496
    .local v7, "reloadContacts":Z
    const/4 v1, 0x0

    .restart local v1    # "a":I
    :goto_7f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_f7

    .line 1497
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1498
    .local v5, "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    const/4 v11, 0x0

    .line 1499
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_9e

    .line 1500
    iget v12, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1502
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9e
    if-nez v11, :cond_bc

    .line 1503
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1507
    :goto_ae
    if-eqz v11, :cond_b8

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c5

    .line 1508
    :cond_b8
    const/4 v7, 0x1

    .line 1496
    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 1505
    :cond_bc
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_ae

    .line 1512
    :cond_c5
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1513
    .local v2, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v2, :cond_e6

    .line 1514
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1515
    .local v4, "index":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_e6

    .line 1516
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1519
    .end local v4    # "index":I
    :cond_e6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_f1

    .line 1520
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    :cond_f1
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 1525
    .end local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v5    # "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f7
    const/4 v1, 0x0

    :goto_f8
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_16e

    .line 1526
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1527
    .restart local v10    # "uid":Ljava/lang/Integer;
    sget-object v12, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v13, Lorg/telegram/messenger/ContactsController$13;

    invoke-direct {v13, p0, v10}, Lorg/telegram/messenger/ContactsController$13;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Integer;)V

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1534
    const/4 v11, 0x0

    .line 1535
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_11b

    .line 1536
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1538
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11b
    if-nez v11, :cond_12b

    .line 1539
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1543
    :goto_125
    if-nez v11, :cond_134

    .line 1544
    const/4 v7, 0x1

    .line 1525
    :cond_128
    :goto_128
    add-int/lit8 v1, v1, 0x1

    goto :goto_f8

    .line 1541
    :cond_12b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_125

    .line 1548
    :cond_134
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_128

    .line 1549
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1550
    .restart local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v2, :cond_15d

    .line 1551
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1552
    .restart local v4    # "index":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_15d

    .line 1553
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1556
    .end local v4    # "index":I
    :cond_15d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_168

    .line 1557
    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    :cond_168
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_128

    .line 1563
    .end local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v10    # "uid":Ljava/lang/Integer;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_17a

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_189

    .line 1564
    :cond_17a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :cond_189
    if-eqz v7, :cond_196

    .line 1568
    sget-object v12, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v13, Lorg/telegram/messenger/ContactsController$14;

    invoke-direct {v13, p0}, Lorg/telegram/messenger/ContactsController$14;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1605
    :goto_195
    return-void

    .line 1575
    :cond_196
    move-object/from16 v6, p3

    .line 1576
    .local v6, "newContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v3, p4

    .line 1577
    .local v3, "contactsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Lorg/telegram/messenger/ContactsController$15;

    invoke-direct {v12, p0, v6, v3}, Lorg/telegram/messenger/ContactsController$15;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_195
.end method

.method private buildContactsSectionsArrays(Z)V
    .registers 15
    .param p1, "sort"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1343
    if-eqz p1, :cond_e

    .line 1344
    iget-object v8, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/messenger/ContactsController$10;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/ContactsController$10;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1356
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    .local v1, "ids":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1358
    .local v4, "sectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v5, "sortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_23
    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1361
    .local v7, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 1362
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_23

    .line 1366
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 1367
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_4d

    .line 1368
    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1370
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_87

    .line 1371
    const-string v2, "#"

    .line 1375
    :goto_55
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1376
    .local v3, "replace":Ljava/lang/String;
    if-eqz v3, :cond_60

    .line 1377
    move-object v2, v3

    .line 1379
    :cond_60
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1380
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v0, :cond_73

    .line 1381
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_73
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_81

    .line 1387
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_81
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1373
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v3    # "replace":Ljava/lang/String;
    :cond_87
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_55

    .line 1391
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_8c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 1392
    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1394
    new-instance v8, Lorg/telegram/messenger/ContactsController$11;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/ContactsController$11;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1408
    iput-object v4, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 1409
    iput-object v5, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 1410
    return-void
.end method

.method private checkContactsInternal()Z
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 313
    const/4 v11, 0x0

    .line 315
    .local v11, "reload":Z
    :try_start_2
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v2

    if-nez v2, :cond_9

    .line 344
    :goto_8
    return v1

    .line 318
    :cond_9
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_64

    move-result-object v0

    .line 319
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 321
    .local v10, "pCur":Landroid/database/Cursor;
    :try_start_10
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 322
    if-eqz v10, :cond_5e

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v7, "currentVersion":Ljava/lang/StringBuilder;
    :goto_28
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 325
    const-string v1, "version"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 326
    .local v6, "col":I
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3b} :catch_3c
    .catchall {:try_start_10 .. :try_end_3b} :catchall_69

    goto :goto_28

    .line 334
    .end local v6    # "col":I
    .end local v7    # "currentVersion":Ljava/lang/StringBuilder;
    :catch_3c
    move-exception v8

    .line 335
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3d
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_69

    .line 337
    if-eqz v10, :cond_45

    .line 338
    :try_start_42
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_64

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "pCur":Landroid/database/Cursor;
    :cond_45
    :goto_45
    move v1, v11

    .line 344
    goto :goto_8

    .line 328
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "currentVersion":Ljava/lang/StringBuilder;
    .restart local v10    # "pCur":Landroid/database/Cursor;
    :cond_47
    :try_start_47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "newContactsVersion":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 330
    const/4 v11, 0x1

    .line 332
    :cond_5c
    iput-object v9, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5e} :catch_3c
    .catchall {:try_start_47 .. :try_end_5e} :catchall_69

    .line 337
    .end local v7    # "currentVersion":Ljava/lang/StringBuilder;
    .end local v9    # "newContactsVersion":Ljava/lang/String;
    :cond_5e
    if-eqz v10, :cond_45

    .line 338
    :try_start_60
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_45

    .line 341
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "pCur":Landroid/database/Cursor;
    :catch_64
    move-exception v8

    .line 342
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 337
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v10    # "pCur":Landroid/database/Cursor;
    :catchall_69
    move-exception v1

    if-eqz v10, :cond_6f

    .line 338
    :try_start_6c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6f
    throw v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_64
.end method

.method private deleteContactFromPhoneBook(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 1712
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1728
    :goto_6
    return-void

    .line 1715
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1716
    const/4 v3, 0x1

    :try_start_b
    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1717
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_5c

    .line 1719
    :try_start_e
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1720
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "account_name"

    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "account_type"

    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1721
    .local v2, "rawContactUri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_51} :catch_5f

    .line 1725
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "rawContactUri":Landroid/net/Uri;
    :goto_51
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1726
    const/4 v3, 0x0

    :try_start_55
    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1727
    monitor-exit v4

    goto :goto_6

    :catchall_59
    move-exception v3

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_59

    throw v3

    .line 1717
    :catchall_5c
    move-exception v3

    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v3

    .line 1722
    :catch_5f
    move-exception v1

    .line 1723
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_51
.end method

.method public static formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "firstName"    # Ljava/lang/String;
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2096
    if-eqz p0, :cond_7

    .line 2097
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2099
    :cond_7
    if-eqz p1, :cond_d

    .line 2100
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2102
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_15
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1b
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2103
    .local v0, "result":Ljava/lang/StringBuilder;
    sget v1, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_54

    .line 2104
    if-eqz p0, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 2105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 2107
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    :cond_41
    :goto_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "result":Ljava/lang/StringBuilder;
    :cond_46
    move v2, v1

    .line 2102
    goto :goto_15

    .line 2110
    .restart local v0    # "result":Ljava/lang/StringBuilder;
    :cond_48
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 2111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 2114
    :cond_54
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_70

    .line 2115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 2117
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 2120
    :cond_70
    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 2121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41
.end method

.method public static getInstance()Lorg/telegram/messenger/ContactsController;
    .registers 4

    .prologue
    .line 113
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;

    .line 114
    .local v0, "localInstance":Lorg/telegram/messenger/ContactsController;
    if-nez v0, :cond_14

    .line 115
    const-class v3, Lorg/telegram/messenger/ContactsController;

    monitor-enter v3

    .line 116
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;

    .line 117
    if-nez v0, :cond_13

    .line 118
    new-instance v1, Lorg/telegram/messenger/ContactsController;

    invoke-direct {v1}, Lorg/telegram/messenger/ContactsController;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .local v1, "localInstance":Lorg/telegram/messenger/ContactsController;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 120
    .end local v1    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 122
    :cond_14
    return-object v0

    .line 120
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/ContactsController;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    goto :goto_16
.end method

.method private hasContactsPermission()Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1413
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_16

    .line 1414
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    move v1, v8

    .line 1434
    :goto_13
    return v1

    :cond_14
    move v1, v9

    .line 1414
    goto :goto_13

    .line 1416
    :cond_16
    const/4 v6, 0x0

    .line 1418
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_17
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1419
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1420
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2d} :catch_48
    .catchall {:try_start_17 .. :try_end_2d} :catchall_57

    move-result v1

    if-nez v1, :cond_3c

    .line 1427
    :cond_30
    if-eqz v6, :cond_35

    .line 1428
    :try_start_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_37

    :cond_35
    :goto_35
    move v1, v9

    .line 1421
    goto :goto_13

    .line 1430
    :catch_37
    move-exception v7

    .line 1431
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_35

    .line 1427
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3c
    if-eqz v6, :cond_41

    .line 1428
    :try_start_3e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_43

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_41
    :goto_41
    move v1, v8

    .line 1434
    goto :goto_13

    .line 1430
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_43
    move-exception v7

    .line 1431
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_41

    .line 1423
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_48
    move-exception v7

    .line 1424
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_49
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_57

    .line 1427
    if-eqz v6, :cond_41

    .line 1428
    :try_start_4e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_41

    .line 1430
    :catch_52
    move-exception v7

    .line 1431
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_41

    .line 1426
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_57
    move-exception v1

    .line 1427
    if-eqz v6, :cond_5d

    .line 1428
    :try_start_5a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 1432
    :cond_5d
    :goto_5d
    throw v1

    .line 1430
    :catch_5e
    move-exception v7

    .line 1431
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5d
.end method

.method private performWriteContactsToPhoneBook()V
    .registers 4

    .prologue
    .line 1465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1466
    .local v0, "contactsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1467
    sget-object v1, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ContactsController$12;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ContactsController$12;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1473
    return-void
.end method

.method private performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1439
    .local p1, "contactsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1462
    :cond_6
    :goto_6
    return-void

    .line 1442
    :cond_7
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1443
    .local v1, "rawContactUri":Landroid/net/Uri;
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sync2"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1444
    .local v8, "c1":Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1445
    .local v7, "bookContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v8, :cond_6

    .line 1446
    :goto_46
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1447
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_46

    .line 1459
    .end local v1    # "rawContactUri":Landroid/net/Uri;
    .end local v7    # "bookContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v8    # "c1":Landroid/database/Cursor;
    :catch_62
    move-exception v9

    .line 1460
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1449
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v1    # "rawContactUri":Landroid/net/Uri;
    .restart local v7    # "bookContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v8    # "c1":Landroid/database/Cursor;
    :cond_67
    :try_start_67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1451
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_6b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 1452
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1453
    .local v10, "u":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 1454
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1455
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/messenger/ContactsController;->addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_95} :catch_62

    .line 1451
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b
.end method

.method private readContactsFromPhoneBook()Ljava/util/HashMap;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v9, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v3

    if-nez v3, :cond_c

    .line 540
    :cond_b
    :goto_b
    return-object v9

    .line 375
    :cond_c
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 377
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v19, "shortContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v15, "idsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 380
    .local v18, "pCur":Landroid/database/Cursor;
    if-eqz v18, :cond_14a

    .line 381
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_147

    .line 382
    :cond_31
    :goto_31
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_147

    .line 383
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 384
    .local v17, "number":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 387
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 388
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_31

    .line 392
    move-object/from16 v20, v17

    .line 394
    .local v20, "shortNumber":Ljava/lang/String;
    const-string v3, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 395
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 398
    :cond_64
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 402
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 403
    .local v13, "id":Ljava/lang/Integer;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 404
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_7e
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 408
    .local v23, "type":I
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 409
    .local v8, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v8, :cond_a3

    .line 410
    new-instance v8, Lorg/telegram/messenger/ContactsController$Contact;

    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-direct {v8}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 411
    .restart local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const-string v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 412
    const-string v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 413
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    .line 414
    invoke-virtual {v9, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_a3
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    if-nez v23, :cond_e7

    .line 422
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, "custom":Ljava/lang/String;
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    if-eqz v10, :cond_dd

    .end local v10    # "custom":Ljava/lang/String;
    :goto_c8
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_cb
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d2} :catch_d4

    goto/16 :goto_31

    .line 519
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v13    # "id":Ljava/lang/Integer;
    .end local v15    # "idsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "number":Ljava/lang/String;
    .end local v18    # "pCur":Landroid/database/Cursor;
    .end local v19    # "shortContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v20    # "shortNumber":Ljava/lang/String;
    .end local v23    # "type":I
    :catch_d4
    move-exception v11

    .line 520
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 521
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_b

    .line 423
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .restart local v10    # "custom":Ljava/lang/String;
    .restart local v13    # "id":Ljava/lang/Integer;
    .restart local v15    # "idsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17    # "number":Ljava/lang/String;
    .restart local v18    # "pCur":Landroid/database/Cursor;
    .restart local v19    # "shortContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .restart local v20    # "shortNumber":Ljava/lang/String;
    .restart local v23    # "type":I
    :cond_dd
    :try_start_dd
    const-string v4, "PhoneMobile"

    const v5, 0x7f070444

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c8

    .line 424
    .end local v10    # "custom":Ljava/lang/String;
    :cond_e7
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_fb

    .line 425
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v4, "PhoneHome"

    const v5, 0x7f070442

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 426
    :cond_fb
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_10f

    .line 427
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v4, "PhoneMobile"

    const v5, 0x7f070444

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 428
    :cond_10f
    const/4 v3, 0x3

    move/from16 v0, v23

    if-ne v0, v3, :cond_123

    .line 429
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v4, "PhoneWork"

    const v5, 0x7f07044a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 430
    :cond_123
    const/16 v3, 0xc

    move/from16 v0, v23

    if-ne v0, v3, :cond_138

    .line 431
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v4, "PhoneMain"

    const v5, 0x7f070443

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 433
    :cond_138
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v4, "PhoneOther"

    const v5, 0x7f070449

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 438
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v13    # "id":Ljava/lang/Integer;
    .end local v17    # "number":Ljava/lang/String;
    .end local v20    # "shortNumber":Ljava/lang/String;
    .end local v23    # "type":I
    :cond_147
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_14a
    const-string v3, ","

    invoke-static {v3, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    .line 442
    .local v14, "ids":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mimetype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 443
    if-eqz v18, :cond_b

    .line 444
    :cond_18f
    :goto_18f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_236

    .line 445
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 446
    .local v13, "id":I
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 447
    .local v12, "fname":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 448
    .local v21, "sname":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 449
    .local v22, "sname2":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 450
    .local v16, "mname":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 451
    .restart local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v8, :cond_18f

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18f

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 452
    iput-object v12, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 453
    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 454
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-nez v3, :cond_1e2

    .line 455
    const-string v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 457
    :cond_1e2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 458
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_231

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 464
    :cond_20d
    :goto_20d
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v3, :cond_215

    .line 465
    const-string v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 467
    :cond_215
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18f

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18f

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18f

    .line 468
    move-object/from16 v0, v22

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto/16 :goto_18f

    .line 461
    :cond_231
    move-object/from16 v0, v16

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_20d

    .line 472
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v12    # "fname":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v16    # "mname":Ljava/lang/String;
    .end local v21    # "sname":Ljava/lang/String;
    .end local v22    # "sname2":Ljava/lang/String;
    :cond_236
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_239} :catch_d4

    goto/16 :goto_b
.end method

.method private reloadContactsStatusesMaybe()V
    .registers 9

    .prologue
    .line 1274
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1275
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "lastReloadStatusTime"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1276
    .local v2, "lastReloadStatusTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_20

    .line 1277
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 1282
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "lastReloadStatusTime":J
    :cond_20
    :goto_20
    return-void

    .line 1279
    :catch_21
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private saveContactsLoadTime()V
    .registers 7

    .prologue
    .line 1286
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1287
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastReloadStatusTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1291
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_1a
    return-void

    .line 1288
    :catch_1b
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method private updateUnregisteredContacts(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1294
    .local p1, "contactsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1296
    .local v1, "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_33

    .line 1297
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1298
    .local v8, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 1299
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :cond_2a

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 1296
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1302
    :cond_2d
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1305
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v8    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    .local v5, "sortedPhoneBookContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ContactsController$Contact;>;"
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_42
    :goto_42
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1307
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1308
    .local v8, "value":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1310
    .local v2, "id":I
    const/4 v4, 0x0

    .line 1311
    .local v4, "skip":Z
    const/4 v0, 0x0

    :goto_60
    iget-object v9, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_86

    .line 1312
    iget-object v9, v8, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1313
    .local v6, "sphone":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_85

    iget-object v9, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_8c

    .line 1314
    :cond_85
    const/4 v4, 0x1

    .line 1318
    .end local v6    # "sphone":Ljava/lang/String;
    :cond_86
    if-nez v4, :cond_42

    .line 1322
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 1311
    .restart local v6    # "sphone":Ljava/lang/String;
    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 1324
    .end local v2    # "id":I
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v4    # "skip":Z
    .end local v6    # "sphone":Ljava/lang/String;
    .end local v8    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_8f
    new-instance v9, Lorg/telegram/messenger/ContactsController$9;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/ContactsController$9;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1339
    iput-object v5, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    .line 1340
    return-void
.end method


# virtual methods
.method public addContact(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 8
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 1747
    if-eqz p1, :cond_a

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1827
    :cond_a
    :goto_a
    return-void

    .line 1751
    :cond_b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 1752
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .local v1, "contactsParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1754
    .local v0, "c":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1755
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1758
    :cond_3f
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1759
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1760
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1761
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 1763
    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    .line 1767
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/ContactsController$17;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ContactsController$17;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const/4 v5, 0x6

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_a
.end method

.method public addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J
    .registers 15
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "check"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    .line 1646
    iget-object v8, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    if-eqz v8, :cond_11

    if-eqz p1, :cond_11

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1708
    :cond_11
    :goto_11
    return-wide v6

    .line 1649
    :cond_12
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1652
    const-wide/16 v6, -0x1

    .line 1653
    .local v6, "res":J
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1654
    const/4 v8, 0x1

    :try_start_1e
    iput-boolean v8, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1655
    monitor-exit v9
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_140

    .line 1656
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1657
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_68

    .line 1659
    :try_start_29
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "caller_is_syncadapter"

    const-string v10, "true"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "account_name"

    iget-object v10, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "account_type"

    iget-object v10, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1660
    .local v4, "rawContactUri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sync2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_68} :catch_143

    .line 1666
    .end local v4    # "rawContactUri":Landroid/net/Uri;
    :cond_68
    :goto_68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1668
    .local v3, "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1669
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "account_name"

    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1670
    const-string v8, "account_type"

    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1671
    const-string v8, "sync1"

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1672
    const-string v8, "sync2"

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1673
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1676
    const-string v8, "raw_contact_id"

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1677
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1678
    const-string v8, "data2"

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1679
    const-string v8, "data3"

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1680
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1690
    const-string v8, "raw_contact_id"

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1691
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.profile"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1692
    const-string v8, "data1"

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1693
    const-string v8, "data2"

    const-string v9, "Telegram Profile"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1694
    const-string v8, "data3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1695
    const-string v8, "data4"

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1696
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    :try_start_115
    const-string v8, "com.android.contacts"

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 1699
    .local v5, "result":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_134

    array-length v8, v5

    if-lez v8, :cond_134

    const/4 v8, 0x0

    aget-object v8, v5, v8

    iget-object v8, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v8, :cond_134

    .line 1700
    const/4 v8, 0x0

    aget-object v8, v5, v8

    iget-object v8, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_133} :catch_149

    move-result-wide v6

    .line 1705
    .end local v5    # "result":[Landroid/content/ContentProviderResult;
    :cond_134
    :goto_134
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1706
    const/4 v8, 0x0

    :try_start_138
    iput-boolean v8, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1707
    monitor-exit v9

    goto/16 :goto_11

    :catchall_13d
    move-exception v8

    monitor-exit v9
    :try_end_13f
    .catchall {:try_start_138 .. :try_end_13f} :catchall_13d

    throw v8

    .line 1655
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_140
    move-exception v8

    :try_start_141
    monitor-exit v9
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw v8

    .line 1661
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    :catch_143
    move-exception v2

    .line 1662
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 1702
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_149
    move-exception v2

    .line 1703
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_134
.end method

.method public checkAppAccount()V
    .registers 10

    .prologue
    .line 228
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 231
    .local v3, "am":Landroid/accounts/AccountManager;
    :try_start_6
    const-string v6, "org.telegram.account"

    invoke-virtual {v3, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 232
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_23

    array-length v6, v2

    if-lez v6, :cond_23

    .line 233
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_12
    array-length v6, v2

    if-ge v0, v6, :cond_23

    .line 234
    aget-object v6, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_1f

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 237
    .end local v0    # "a":I
    .end local v2    # "accounts":[Landroid/accounts/Account;
    :catch_1f
    move-exception v4

    .line 238
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 241
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_23
    const-string v6, "org.telegram.messenger"

    invoke-virtual {v3, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 242
    .restart local v2    # "accounts":[Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 243
    .local v5, "recreateAccount":Z
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 244
    array-length v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6d

    .line 245
    const/4 v6, 0x0

    aget-object v1, v2, v6

    .line 246
    .local v1, "acc":Landroid/accounts/Account;
    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 247
    const/4 v5, 0x1

    .line 254
    .end local v1    # "acc":Landroid/accounts/Account;
    :goto_57
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    .line 260
    :cond_5a
    :goto_5a
    if-eqz v5, :cond_a6

    .line 262
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5d
    :try_start_5d
    array-length v6, v2

    if-ge v0, v6, :cond_78

    .line 263
    aget-object v6, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_67} :catch_74

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 249
    .end local v0    # "a":I
    .restart local v1    # "acc":Landroid/accounts/Account;
    :cond_6a
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    goto :goto_57

    .line 252
    .end local v1    # "acc":Landroid/accounts/Account;
    :cond_6d
    const/4 v5, 0x1

    goto :goto_57

    .line 256
    :cond_6f
    array-length v6, v2

    if-lez v6, :cond_5a

    .line 257
    const/4 v5, 0x1

    goto :goto_5a

    .line 265
    .restart local v0    # "a":I
    :catch_74
    move-exception v4

    .line 266
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 268
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_78
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 270
    :try_start_7e
    new-instance v6, Landroid/accounts/Account;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "org.telegram.messenger"

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    .line 271
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a6} :catch_a7

    .line 277
    .end local v0    # "a":I
    :cond_a6
    :goto_a6
    return-void

    .line 272
    .restart local v0    # "a":I
    :catch_a7
    move-exception v4

    .line 273
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a6
.end method

.method public checkContacts()V
    .registers 3

    .prologue
    .line 292
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$3;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public checkInviteText()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 193
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "invitetext"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    .line 195
    const-string v3, "invitetexttime"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 196
    .local v2, "time":I
    iget-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    if-nez v3, :cond_43

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    if-eqz v3, :cond_2e

    const v3, 0x15180

    add-int/2addr v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    if-ge v3, v4, :cond_43

    .line 197
    :cond_2e
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    .line 198
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;-><init>()V

    .line 199
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/ContactsController$2;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ContactsController$2;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 221
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;
    :cond_43
    return-void
.end method

.method public cleanup()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 156
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 157
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 160
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 168
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 174
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 175
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 176
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 178
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 179
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    .line 180
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    .line 181
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    .line 182
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    .line 183
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$1;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    .line 190
    return-void
.end method

.method public deleteAllAppAccounts()V
    .registers 8

    .prologue
    .line 281
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 282
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v4, "org.telegram.messenger"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 283
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    array-length v4, v1

    if-ge v0, v4, :cond_1e

    .line 284
    aget-object v4, v1, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_1a

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 286
    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    :catch_1a
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1e
    return-void
.end method

.method public deleteContact(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1830
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1896
    :cond_8
    :goto_8
    return-void

    .line 1833
    :cond_9
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;-><init>()V

    .line 1834
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1836
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    .line 1837
    .local v0, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v0, :cond_17

    .line 1840
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;->id:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1843
    .end local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_38
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/ContactsController$18;

    invoke-direct {v5, p0, v2, p1}, Lorg/telegram/messenger/ContactsController$18;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v1, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_8
.end method

.method public forceImportContacts()V
    .registers 3

    .prologue
    .line 304
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$4;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "original":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v3, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 546
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v0, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v0}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 547
    .local v0, "copyContact":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 548
    .local v2, "originalContact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 549
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 550
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 552
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 553
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 554
    iget v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    iput v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    .line 555
    iget v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 557
    .end local v0    # "copyContact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v2    # "originalContact":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_56
    return-object v3
.end method

.method public getDeleteAccountTTL()I
    .registers 2

    .prologue
    .line 2051
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    return v0
.end method

.method public getInviteText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "InviteText"

    const v1, 0x7f0702a1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getLoadingCallsInfo()Z
    .registers 3

    .prologue
    .line 2063
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getLoadingDeleteInfo()Z
    .registers 3

    .prologue
    .line 2055
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getLoadingGroupInfo()Z
    .registers 3

    .prologue
    .line 2067
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getLoadingLastSeenInfo()Z
    .registers 3

    .prologue
    .line 2059
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPrivacyRules(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2071
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 2072
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 2076
    :goto_5
    return-object v0

    .line 2073
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 2074
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_5

    .line 2076
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    goto :goto_5
.end method

.method public isLoadingContacts()Z
    .registers 3

    .prologue
    .line 932
    sget-object v1, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_3
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    monitor-exit v1

    return v0

    .line 934
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public loadContacts(ZZ)V
    .registers 6
    .param p1, "fromCache"    # Z
    .param p2, "cacheEmpty"    # Z

    .prologue
    .line 938
    sget-object v2, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v2

    .line 939
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 940
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_16

    .line 941
    if-eqz p1, :cond_19

    .line 942
    const-string v1, "load contacts from cache"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getContacts()V

    .line 976
    :goto_15
    return-void

    .line 940
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1

    .line 945
    :cond_19
    const-string v1, "load contacts from server"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 946
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;-><init>()V

    .line 947
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;
    if-eqz p2, :cond_36

    const-string v1, ""

    :goto_27
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;->hash:Ljava/lang/String;

    .line 948
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$7;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$7;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_15

    .line 947
    :cond_36
    sget-object v1, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    goto :goto_27
.end method

.method public loadPrivacySettings()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1949
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    if-nez v1, :cond_18

    .line 1950
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 1951
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;-><init>()V

    .line 1952
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$20;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$20;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1971
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;
    :cond_18
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    if-nez v1, :cond_36

    .line 1972
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    .line 1973
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    .line 1974
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 1975
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$21;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$21;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1995
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    :cond_36
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    if-nez v1, :cond_54

    .line 1996
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    .line 1997
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    .line 1998
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 1999
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$22;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$22;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2019
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    :cond_54
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    if-nez v1, :cond_72

    .line 2020
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    .line 2021
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    .line 2022
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 2023
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$23;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$23;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2043
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    :cond_72
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2044
    return-void
.end method

.method protected markAsContacted(Ljava/lang/String;)V
    .registers 4
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 1731
    if-nez p1, :cond_3

    .line 1744
    :goto_2
    return-void

    .line 1734
    :cond_3
    sget-object v0, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ContactsController$16;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method protected performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V
    .registers 14
    .param p2, "request"    # Z
    .param p3, "first"    # Z
    .param p4, "schedule"    # Z
    .param p5, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    if-nez p3, :cond_7

    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v0, :cond_7

    .line 929
    :goto_6
    return-void

    .line 564
    :cond_7
    sget-object v7, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ContactsController$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/ContactsController$6;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "userDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v8, -0x1

    .line 1608
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1609
    .local v3, "newContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    .local v1, "contactsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1611
    .local v4, "uid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4e

    .line 1612
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1613
    .local v0, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 1614
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1616
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1617
    .local v2, "idx":I
    if-eq v2, v8, :cond_f

    .line 1618
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 1621
    .end local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v2    # "idx":I
    :cond_4e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_f

    .line 1622
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1624
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1625
    .restart local v2    # "idx":I
    if-eq v2, v8, :cond_f

    .line 1626
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 1631
    .end local v2    # "idx":I
    .end local v4    # "uid":Ljava/lang/Integer;
    :cond_7f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8c

    .line 1632
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/MessagesStorage;->deleteContacts(Ljava/util/ArrayList;)V

    .line 1634
    :cond_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9a

    .line 1635
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 1637
    :cond_9a
    iget-boolean v5, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v5, :cond_a2

    iget-boolean v5, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v5, :cond_d0

    .line 1638
    :cond_a2
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay update - contacts add = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " delete = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1643
    :goto_cf
    return-void

    .line 1641
    :cond_d0
    invoke-direct {p0, p1, p2, v3, v1}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_cf
.end method

.method public processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 5
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 980
    .local p1, "contactsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .local p2, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/messenger/ContactsController$8;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/ContactsController$8;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1270
    return-void
.end method

.method public readContacts()V
    .registers 3

    .prologue
    .line 348
    sget-object v1, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_3
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    if-eqz v0, :cond_9

    .line 350
    monitor-exit v1

    .line 367
    :goto_8
    return-void

    .line 352
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 353
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 355
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$5;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 353
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public reloadContactsStatuses()V
    .registers 7

    .prologue
    .line 1899
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    .line 1900
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->clearFullUsers()V

    .line 1901
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1902
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1903
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "needGetStatuses"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1904
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;-><init>()V

    .line 1905
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/ContactsController$19;

    invoke-direct {v4, p0, v0}, Lorg/telegram/messenger/ContactsController$19;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1946
    return-void
.end method

.method public setDeleteAccountTTL(I)V
    .registers 2
    .param p1, "ttl"    # I

    .prologue
    .line 2047
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    .line 2048
    return-void
.end method

.method public setPrivacyRules(Ljava/util/ArrayList;I)V
    .registers 6
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2081
    .local p1, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PrivacyRule;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    .line 2082
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 2088
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2089
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    .line 2090
    return-void

    .line 2083
    :cond_15
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    .line 2084
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_5

    .line 2086
    :cond_1b
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    goto :goto_5
.end method
