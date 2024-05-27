# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveRecord::DestroyAssociationAsyncJob`.
# Please instead update this file by running `bin/tapioca dsl ActiveRecord::DestroyAssociationAsyncJob`.


class ActiveRecord::DestroyAssociationAsyncJob
  class << self
    sig do
      params(
        owner_model_name: T.untyped,
        owner_id: T.untyped,
        association_class: T.untyped,
        association_ids: T.untyped,
        association_primary_key_column: T.untyped,
        ensuring_owner_was_method: T.untyped,
        block: T.nilable(T.proc.params(job: ActiveRecord::DestroyAssociationAsyncJob).void)
      ).returns(T.any(ActiveRecord::DestroyAssociationAsyncJob, FalseClass))
    end
    def perform_later(owner_model_name: T.unsafe(nil), owner_id: T.unsafe(nil), association_class: T.unsafe(nil), association_ids: T.unsafe(nil), association_primary_key_column: T.unsafe(nil), ensuring_owner_was_method: T.unsafe(nil), &block); end

    sig do
      params(
        owner_model_name: T.untyped,
        owner_id: T.untyped,
        association_class: T.untyped,
        association_ids: T.untyped,
        association_primary_key_column: T.untyped,
        ensuring_owner_was_method: T.untyped
      ).returns(T.untyped)
    end
    def perform_now(owner_model_name: T.unsafe(nil), owner_id: T.unsafe(nil), association_class: T.unsafe(nil), association_ids: T.unsafe(nil), association_primary_key_column: T.unsafe(nil), ensuring_owner_was_method: T.unsafe(nil)); end
  end
end
