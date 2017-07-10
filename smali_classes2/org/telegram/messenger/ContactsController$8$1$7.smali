.class Lorg/telegram/messenger/ContactsController$8$1$7;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$8$1;

.field final synthetic val$contactsDictionary:Landroid/util/SparseArray;

.field final synthetic val$onlineSectionsDict:Ljava/util/HashMap;

.field final synthetic val$onlineSectionsDictMutual:Ljava/util/HashMap;

.field final synthetic val$onlineSortedSectionsArray:Ljava/util/ArrayList;

.field final synthetic val$onlineSortedSectionsArrayMutual:Ljava/util/ArrayList;

.field final synthetic val$sectionsDict:Ljava/util/HashMap;

.field final synthetic val$sectionsDictMutual:Ljava/util/HashMap;

.field final synthetic val$sortedSectionsArray:Ljava/util/ArrayList;

.field final synthetic val$sortedSectionsArrayMutual:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8$1;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .param p1, "this$2"    # Lorg/telegram/messenger/ContactsController$8$1;

    .prologue
    .line 1208
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$contactsDictionary:Landroid/util/SparseArray;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sectionsDict:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sectionsDictMutual:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sortedSectionsArray:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sortedSectionsArrayMutual:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSectionsDict:Ljava/util/HashMap;

    iput-object p8, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSectionsDictMutual:Ljava/util/HashMap;

    iput-object p9, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSortedSectionsArray:Ljava/util/ArrayList;

    iput-object p10, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSortedSectionsArrayMutual:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1211
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 1212
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$contactsDictionary:Landroid/util/SparseArray;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    .line 1213
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sectionsDict:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 1214
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sectionsDictMutual:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 1215
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sortedSectionsArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 1216
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$sortedSectionsArrayMutual:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 1218
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSectionsDict:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    .line 1219
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSectionsDictMutual:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 1220
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSortedSectionsArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 1221
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->val$onlineSortedSectionsArrayMutual:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 1223
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v0, v0, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_82

    .line 1224
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1225
    :try_start_77
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->access$402(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 1226
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_be

    .line 1228
    :cond_82
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$1200(Lorg/telegram/messenger/ContactsController;)V

    .line 1229
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    .line 1231
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1233
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v0, v0, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c1

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-boolean v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->val$isEmpty:Z

    if-nez v0, :cond_c1

    .line 1234
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$1300(Lorg/telegram/messenger/ContactsController;)V

    .line 1238
    :goto_bd
    return-void

    .line 1226
    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0

    .line 1236
    :cond_c1
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$7;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$1400(Lorg/telegram/messenger/ContactsController;)V

    goto :goto_bd
.end method
