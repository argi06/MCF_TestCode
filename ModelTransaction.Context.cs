﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MCF_TestCode
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Transaction_DBEntities : DbContext
    {
        public Transaction_DBEntities()
            : base("name=Transaction_DBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ms_storage_location1> ms_storage_location1 { get; set; }
        public virtual DbSet<ms_storage_location2> ms_storage_location2 { get; set; }
        public virtual DbSet<ms_user> ms_user { get; set; }
        public virtual DbSet<tr_bpkb1> tr_bpkb1 { get; set; }
        public virtual DbSet<tr_bpkb2> tr_bpkb2 { get; set; }
    }
}