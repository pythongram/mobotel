.class Lcom/evernote/android/job/JobCreatorHolder;
.super Ljava/lang/Object;
.source "JobCreatorHolder.java"


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# instance fields
.field private final mJobCreators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/android/job/JobCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobCreatorHolder"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobCreatorHolder;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public addJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .registers 4
    .param p1, "creator"    # Lcom/evernote/android/job/JobCreator;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_3
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public createJob(Ljava/lang/String;)Lcom/evernote/android/job/Job;
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    const/4 v6, 0x0

    .line 41
    .local v6, "singleJobCreator":Lcom/evernote/android/job/JobCreator;
    iget-object v9, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    monitor-enter v9

    .line 42
    :try_start_6
    iget-object v7, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 43
    .local v1, "count":I
    if-nez v1, :cond_18

    .line 44
    sget-object v7, Lcom/evernote/android/job/JobCreatorHolder;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v10, "no JobCreator added"

    invoke-virtual {v7, v10}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 45
    monitor-exit v9

    move-object v2, v8

    .line 68
    :goto_17
    return-object v2

    .line 47
    :cond_18
    const/4 v7, 0x1

    if-ne v1, v7, :cond_2e

    .line 49
    iget-object v7, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/evernote/android/job/JobCreator;

    move-object v6, v0

    .line 53
    :goto_26
    monitor-exit v9
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_37

    .line 55
    if-eqz v6, :cond_3a

    .line 56
    invoke-interface {v6, p1}, Lcom/evernote/android/job/JobCreator;->create(Ljava/lang/String;)Lcom/evernote/android/job/Job;

    move-result-object v2

    goto :goto_17

    .line 51
    :cond_2e
    :try_start_2e
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v4    # "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    .local v5, "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    move-object v4, v5

    .end local v5    # "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    .restart local v4    # "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    goto :goto_26

    .line 53
    .end local v1    # "count":I
    :catchall_37
    move-exception v7

    monitor-exit v9
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_37

    throw v7

    .line 59
    .restart local v1    # "count":I
    :cond_3a
    if-eqz v4, :cond_53

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/android/job/JobCreator;

    .line 61
    .local v3, "jobCreator":Lcom/evernote/android/job/JobCreator;
    invoke-interface {v3, p1}, Lcom/evernote/android/job/JobCreator;->create(Ljava/lang/String;)Lcom/evernote/android/job/Job;

    move-result-object v2

    .line 62
    .local v2, "job":Lcom/evernote/android/job/Job;
    if-eqz v2, :cond_40

    goto :goto_17

    .end local v2    # "job":Lcom/evernote/android/job/Job;
    .end local v3    # "jobCreator":Lcom/evernote/android/job/JobCreator;
    :cond_53
    move-object v2, v8

    .line 68
    goto :goto_17
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_3
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 74
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public removeJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .registers 4
    .param p1, "creator"    # Lcom/evernote/android/job/JobCreator;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_3
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
